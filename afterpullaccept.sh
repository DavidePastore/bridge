clear
echo Update on github/

cd github/pt_BR
svn update
cd ../..

echo
echo SVN status

cd phpnet/en ; echo "In en:" ; svn status ; cd .. ; cd pt_BR ; echo "In pt_BR:" ; svn status ; cd ../..

echo
echo Differences
diff -r --exclude=".svn" --exclude="README.md" phpnet/pt_BR github/pt_BR

echo
echo Done
