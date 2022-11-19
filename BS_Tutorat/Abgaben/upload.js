const axios = require("axios")
const parser = require("node-html-parser")
const form = require("form-data")
const fs = require("fs")
const readline = require("readline-sync")
const qs = require("qs")

let blatt_g
let sessionid
let gruppe_g = "7" // Gruppennummer i.e "6"
let password = "skT7preJ" // Password for the group
let username = "tutor7"   // Username for the group i.e "tutor6"

async function student() {

    let response = await axios({
        url: "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutor.cgi?sessionid=" + sessionid + "&bgruppe=" + gruppe_g
    })
    let pikachu = parser.parse(response.data)
    let rows = pikachu.querySelectorAll("tr")
    let studentnames = []
    for (let i = 1; i < rows.length; i++){
        let col = rows[i].childNodes[4]
        let students = col.querySelectorAll("input")
        let studs = []
        for (let j in students) {
            studs.push(students[j].getAttribute("name"))
        }
        studentnames.push(studs)
    }
    return studentnames

}

async function upload(points, students, files) {

    let data = new form()

    for (let i in files) {
        let filename = files[i].substring(2,4)
        console.log(filename)
        data.append("file"+filename, fs.createReadStream("./Blatt"+ blatt_g +"/korrektur/"+files[i]), {filename: files[i], contentType: 'application/pdf', knownLength: fs.statSync("./Blatt"+ blatt_g +"/korrektur/"+files[i]).size})
    }

    for (let i in points){
        for (let j in students[i]) {
            data.append(students[i][j], points[i])
        }
    }
    data.append("sessionid", sessionid)
    data.append("bgruppe", gruppe_g)
    data.append("blatt", format(blatt_g))

    let response = await axios({
        url: "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutorupload.cgi",
        method: "post",
        data: data,
        headers: {
            ...data.getHeaders(),
            "content-length": data.getLengthSync()
        }
    })

}

async function main() {

    await login()
    blatt_g = readline.question("Welches Blatt: ")
    let points = fs.readFileSync("./Blatt"+ blatt_g +"/Korrektur/points.txt", "utf8").split("\n")
    points.forEach(function(line){
        console.log(line)
    })
    let students = await student()
    let files = fs.readdirSync("./Blatt"+ blatt_g +"/korrektur")
    console.log(students)
    console.log(files)
    console.log(points)
    await upload(points, students, files)
}

function format(zahl) {
    if (zahl.toString().length == 1) {
        return "0" + zahl
    }
    return zahl
}

async function login() {
    try {

        let response = await axios ({
            url: "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/login.cgi",
            method: "post",
            headers: {
                "content-type": "application/x-www-form-urlencoded"
            },
            data: qs.stringify({
                "n": username,
                "p": password
            }),
            maxRedirects: 0
        })

    }catch(e) {
        sessionid = e.response.headers.location.split("?")[1].split("=")[1]
    }
}

main()
