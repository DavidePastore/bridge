#!/bin/bash

cd `dirname $0`

/usr/bin/php src/syncbulk.php phpnet/pt_BR/ github/pt_BR/ 2>&1

/usr/bin/svn status github/pt_BR/ phpnet/pt_BR/

diff -r --exclude=".svn" --exclude="README.md" phpnet/pt_BR github/pt_BR

/usr/bin/php src/svnprops.php phpnet/en   
/usr/bin/php src/svnprops.php phpnet/pt_BR
