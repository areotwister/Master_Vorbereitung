#!/usr/bin/env bash

TUTORAT=07
BLATT=04
ID="p0PX8yJYjNaqk24ogvA9"
ANZAHL_GRUPPEN=16

# https://stackoverflow.com/questions/18460123/how-to-add-leading-zeros-for-for-loop-in-shell
for i in $(seq -w 01 $ANZAHL_GRUPPEN); do
  wget "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutordownload.cgi/${TUTORAT}${i}${BLATT}.pdf?file=${TUTORAT}${i}${BLATT}&sessionid=${ID}&bgruppe=${TUTORAT}" -O ${i}.pdf
  # https://stackoverflow.com/questions/16152583/tell-if-a-file-is-pdf-in-bash
  type="$(file -b ${i}.pdf)"
  if [ ! "${type%%,*}" == "PDF document" ]; then
    rm ${i}.pdf
  fi

  wget "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutordownload.cgi/loes-${BLATT}.pdf?file=loes-${BLATT}&sessionid=${ID}&bgruppe=${TUTORAT}" -O "loes-${BLATT}.pdf"
  wget "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutordownload.cgi/aufg-${BLATT}.pdf?file=aufg-${BLATT}&sessionid=${ID}&bgruppe=${TUTORAT}" -O "aufg-${BLATT}.pdf"
done
