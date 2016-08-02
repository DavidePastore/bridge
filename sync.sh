#!/bin/bash

cd `dirname $0`

/usr/bin/php src/syncbulk.php phpnet/pt_BR/ github/pt_BR/ 2>&1

files=$(fgrep -lr --exclude-dir=.svn '$Revision$' phpnet/en/)
if [ -n "$files" ]; then
    echo
    echo "# Files without svn:keywords"
    echo "  See 'What .subversion/config settings should I have set?' on http://doc.php.net/tutorial/faq.php"
    echo "  $ svn propset svn:keywords 'Id Rev Revision Date LastChangedDate LastChangedRevision Author LastChangedBy HeadURL URL' file"
    echo "$files"
fi

/usr/bin/svn status github/pt_BR/ phpnet/pt_BR/

diff -r --exclude=".svn" --exclude="README.md" phpnet/pt_BR github/pt_BR
