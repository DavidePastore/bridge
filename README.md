# Support files for SVN/Git/GitHub bridge

### Instalation

```
svn export https://github.com/phpdocbrbridge/bridge/trunk phpdoc-github
cd phpdoc-github

svn checkout https://github.com/phpdocbrbridge/traducao/trunk/pt_BR github/pt_BR

svn checkout https://svn.php.net/repository/phpdoc/doc-base/trunk   phpnet/doc-base
svn checkout https://svn.php.net/repository/phpdoc/en/trunk         phpnet/en
svn checkout https://svn.php.net/repository/phpdoc/pt_BR/trunk      phpnet/pt_BR

cp env-common.sh-dist env-common.sh
```

And edit `env-common.sh`.

### Scripts

##### `testpullrequest.sh pr_number`

Downloads, apply and test the contents of a pull request against the official repo.

##### `commitupdatediff.sh "message"`

Commit all changes to official repository, then update both local repositories and check for differences.
