#!/bin/bash

PATH=$PATH:/bin:/usr/bin
cd `dirname $0`

if [ ! -f ./cron.cnf ]; then echo "File not found: cron.cnf"; exit; fi
source ./cron.cnf

./cron-sub.sh | ( printf "Subject: PHPDOC GitHub bridge\nContent-Type: text/plain; charset=utf-8\n\n" && cat ) | /usr/lib/sendmail -f $MAIL_FROM $MAIL_TO
