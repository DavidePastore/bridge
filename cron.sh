cd `dirname $0`

if [ -f env-common.sh ]
then
    source env-common.sh
else
    echo "File not found: env-common.sh"
    exit
fi

./sync.sh | ( printf "Subject: PHPDOC GitHub bridge\nContent-Type: text/plain; charset=utf-8\n\n" && cat ) | /usr/lib/sendmail -f $MAIL_FROM $MAIL_TO
