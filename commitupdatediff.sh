clear
echo Commit on phpnet/pt_BR

cd phpnet/pt_BR/
svn commit -m "$@"

echo
echo Update on github/

cd ../../github/
svn update

echo
echo SVN status

cd ../phpnet/
cd en ; echo "In en:" ; svn status ; cd .. ; cd pt_BR ; echo "In pt_BR:" ; svn status ; cd .. ;

