cd `dirname $0`

/usr/bin/php src/syncbulk.php phpnet/pt_BR/ github/pt_BR/ 2>&1

/usr/bin/svn status github/pt_BR/ phpnet/pt_BR/

