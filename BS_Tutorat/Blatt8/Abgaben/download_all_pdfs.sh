#!/usr/bin/env bash

TUTORAT=07
BLATT=08
ID="fOGo7Qo1vNF9K2DMxt6f"
ANZAHL_GRUPPEN=16

# https://stackoverflow.com/questions/18460123/how-to-add-leading-zeros-for-for-loop-in-shell
for gruppe in $(seq -w 01 $ANZAHL_GRUPPEN); do
  # https://unix.stackexchange.com/questions/560651/leading-zero-fill-of-integer-variable
  # https://unix.stackexchange.com/questions/338000/bash-assign-output-of-pipe-to-a-variable
  # sheet_name=$(printf '%02d%d%02d' ${TUTORAT} ${gruppe} ${BLATT})
  wget "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutordownload.cgi/${TUTORAT}${gruppe}${BLATT}.pdf?file=${TUTORAT}${gruppe}${BLATT}&sessionid=${ID}&bgruppe=${TUTORAT}" -O ${TUTORAT}${gruppe}${BLATT}.pdf
  # https://stackoverflow.com/questions/16152583/tell-if-a-file-is-pdf-in-bash
  type="$(file -b ${TUTORAT}${gruppe}${BLATT}.pdf)"
  if [ ! "${type%%,*}" == "PDF document" ]; then
    rm ${TUTORAT}${gruppe}${BLATT}.pdf
  fi

done
wget "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutordownload.cgi/loes-${BLATT}.pdf?file=loes-${BLATT}&sessionid=${ID}&bgruppe=${TUTORAT}" -O "loes-${BLATT}.pdf"
wget "https://ira.informatik.uni-freiburg.de/cgi-bin/teaching/bs-ws2223/tutordownload.cgi/aufg-${BLATT}.pdf?file=aufg-${BLATT}&sessionid=${ID}&bgruppe=${TUTORAT}" -O "aufg-${BLATT}.pdf"
