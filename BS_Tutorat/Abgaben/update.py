#!/usr/bin/env python

import os


def format(blatt):
    ret_blatt = blatt
    if int(blatt) < 10:
        ret_blatt = "0%s" % blatt
    return ret_blatt


def main():

    f = open("settings.txt", "r")
    data = f.read().splitlines()
    f.close()
    blatt = input("Welches Blatt möchten sie updaten?: ")
    path_sub = data[0]
    path = "%s" % path_sub + "/Blatt" + "%s" % blatt + "/Korrektur"
    grps = int(data[5])

    points = []

    for file in os.listdir(path):
        filename = os.fsdecode(file)
        if filename.endswith(".pdf"):
            filename = filename.rsplit(".pdf", 1)[0]
            file_length = len(filename)
            if file_length == 7:
                pt = float(filename[6])
                grp = int(filename[2] + filename[3])
                filename_tmp = filename[:-1]
                pt_grp = [grp, pt]
                points.append(pt_grp)
            elif file_length == 8:
                if filename[7] == "h":
                    pt = float(filename[6]) + 0.5
                    grp = int(filename[2] + filename[3])
                    filename_tmp = filename[:-2]
                    pt_grp = [grp, pt]
                    points.append(pt_grp)
                else:
                    pt = float(filename[6] + filename[7])
                    grp = int(filename[2] + filename[3])
                    filename_tmp = filename[:-2]
                    pt_grp = [grp, pt]
                    points.append(pt_grp)
            elif file_length == 9:
                pt = float(filename[6] + filename[7]) + 0.5
                grp = int(filename[2] + filename[3])
                filename_tmp = filename[:-3]
                pt_grp = [grp, pt]
                points.append(pt_grp)
            else:
                print("Fehler, Datei %s hat falsche Länge" % filename)

            os.system("mv %s/%s.pdf %s/%s.pdf" % (path, filename, path, filename_tmp))
            continue
        else:
            continue

    p = open(path + "/points.txt", "w+")
    breaker = 0
    for i in range(1, grps + 1):
        for j in range(len(points)):
            if points[j][0] == i:
                p.write("{} \n".format(points[j][1]))
                breaker = 1
                break
            else:
                breaker = 0
                continue
        if breaker == 1:
            continue
        else:
            p.write("0 \n")
            # os.system("cp dummyFolie.pdf /g/Daten/UNI/Tutorien/Betriebssysteme2223/Blatt1/Korrektur/06%s%s.pdf" % (format(i), format(blatt)))
            breaker = 0

    p.close()


if __name__ == "__main__":
    main()
