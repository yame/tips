### 下载
到 `https://dev.mysql.com/downloads/repo/yum/` 下载仓库

### 安装 
```bash
$ rpm -Uvh platform-and-version-specific-package-name.rpm
```

### 安装mysql
```bash
$ yum install mysql-community-server
```

### 查看默认密码
```bash
$ grep 'temporary password' /var/log/mysqld.log
```

### 修改密码
```bash
$ mysql -uroot -p 
$ ALTER USER 'root'@'localhost' IDENTIFIED BY 'Mysql!2017';
```