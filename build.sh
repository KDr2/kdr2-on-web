#!/bin/bash
scribble --dest output ++style custom.css --htmls scribble/main.scrbl

if [[ "$1" == "sync" ]]; then
   BASENAME=`dirname $0`
   rsync -avr $BASENAME/output/main/ kdr2@kdr2.com:~/killianz.com/
fi
