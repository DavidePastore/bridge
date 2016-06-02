clear
svn update github/pt_BR

echo
echo SVN status
echo "In en:"
svn status phpnet/en
echo "In pt_BR:"
svn status phpnet/pt_BR

echo
echo Differences
diff -r --exclude=".svn" --exclude="README.md" phpnet/pt_BR github/pt_BR

echo
echo Files without svn:keywords
fgrep -lr --exclude-dir=.svn '$Revision$' phpnet/en/

echo
echo Done
