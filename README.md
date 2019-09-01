# Support files for SVN/Git/GitHub bridge

## Instalation

```
svn export https://github.com/phpdocbrbridge/bridge/trunk phpdoc-github
cd phpdoc-github

svn checkout https://github.com/phpdocbrbridge/traducao/trunk/pt_BR github/pt_BR

svn co https://svn.php.net/repository/phpdoc/modules/doc-pt_BR      phpnet

cp cron.cnf-dist cron.cnf

chmod +x cron.sh 
chmod +x cron-sub.sh
chmod +x sync.sh
chmod +x test.sh
```

## Configuration

Edit `conf.cnf` and schedule `conf.sh` to run daily.

## Manual scripts

#### `sync.sh`

Update and check local files.

#### `test.sh [pull request #]`

Download, apply and test the contents of a pull request against the official repo.

---


### Notes

* Commit message template:
```
Translations by @[NAME] - https://github.com/phpdocbrbridge/traducao/pull/[NUMBER]
```

* For files without `svn:keywords`:
```
svn propset svn:keywords 'Id Rev Revision Date LastChangedDate LastChangedRevision Author LastChangedBy HeadURL URL' file
svn commit -m "Files without svn:keywords Revision" phpnet/en/
```

* For directories with `entities.*.xml`:
```
rm entities.*.xml
svn propset svn:ignore entities.*.xml .
svn commit -m "Ignore autogerenated files."
```
