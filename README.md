# Support files for SVN/Git/GitHub bridge

### Instalation

```
svn export https://github.com/phpdocbrbridge/bridge/trunk phpdoc-github
cd phpdoc-github

svn checkout https://github.com/phpdocbrbridge/traducao/trunk/pt_BR github/pt_BR

svn checkout https://svn.php.net/repository/phpdoc/doc-base/trunk   phpnet/doc-base
svn checkout https://svn.php.net/repository/phpdoc/en/trunk         phpnet/en
svn checkout https://svn.php.net/repository/phpdoc/pt_BR/trunk      phpnet/pt_BR

chmod +x cron.sh
chmod +x sync.sh

chmod +x testpullrequest.sh
chmod +x afterpullaccept.sh

cp env-common.sh-dist env-common.sh
```

### Configuration

Edit `env-common.sh` and schedule `cron.sh` to run daily.

### Manual scripts

##### `testpullrequest.sh pr_number`

Downloads, apply and test the contents of a pull request against the official repo.

##### `afterpullaccept.sh`

Updates local repositories and check for differences.
