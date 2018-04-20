# Support files for SVN/Git/GitHub bridge

## Instalation

```
svn export https://github.com/phpdocbrbridge/bridge/trunk phpdoc-github
cd phpdoc-github

svn checkout https://github.com/phpdocbrbridge/traducao/trunk/pt_BR github/pt_BR

svn co https://svn.php.net/repository/phpdoc/modules/doc-pt_BR      phpnet

chmod +x cron.sh
chmod +x sync.sh

chmod +x testpullrequest.sh
chmod +x afterpullaccept.sh

cp conf.cnf-dist conf.cnf
```

## Configuration

Edit `conf.cnf` and schedule `cron.sh` to run daily.

## Manual scripts

#### `testpullrequest.sh [pr]`

Download, apply and test the contents of a pull request (pr) against the official repo.

#### `afterpullaccept.sh`

Updates local repositories and check for differences.

---


### Notes

* Commit message template:
```
Translations by @[NAME] - https://github.com/phpdocbrbridge/traducao/pull/[NUMBER]
```

* Files without **svn:keywords**: 
```
svn propset svn:keywords 'Id Rev Revision Date LastChangedDate LastChangedRevision Author LastChangedBy HeadURL URL' file
svn commit -m "Files without svn:keywords Revision" phpnet/en/
```
