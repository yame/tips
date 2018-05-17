### 备份数据库test
```bash
$ mysqldump -uroot -p test > `date +test.%Y%m%d%H%M%S.sql`
```

### 恢复数据库
```bash
$ mysql -uroot -p test < xx.sql
```