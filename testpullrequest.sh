clear
svn revert -R phpnet/pt_BR
php src/synctest.php https://github.com/phpdocbrbridge/traducao/pull/"$1".diff phpnet/pt_BR 1

cd phpnet
svn update doc-base
svn update en
php doc-base/configure.php --silent --enable-xml-details --with-lang=pt_BR

cd pt_BR
svn status > ../../status.txt
svn diff   > ../../diff.txt
cd ..

cd en ; echo "In en:" ; svn status ; cd .. ; cd pt_BR ; echo "In pt_BR:" ; svn status ; cd .. ;
cd ..

echo
stat -c "%n %s" status.txt
stat -c "%n %s" diff.txt
