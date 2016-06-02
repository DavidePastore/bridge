#!/bin/bash

cd `dirname $0`

/usr/bin/php src/syncbulk.php phpnet/pt_BR/ github/pt_BR/ 2>&1

files=$(fgrep -lr --exclude-dir=.svn '$Revision$' phpnet/en/)
if [ -n "$files" ]; then
    echo
    echo "Files without svn:keywords"
    echo "$files"
fi

/usr/bin/svn status github/pt_BR/ phpnet/pt_BR/

diff -r --exclude=".svn" --exclude="README.md" phpnet/pt_BR github/pt_BR
