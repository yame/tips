### ����
�� `https://dev.mysql.com/downloads/repo/yum/` ���زֿ�

### ��װ 
```bash
$ rpm -Uvh platform-and-version-specific-package-name.rpm
```

### ��װmysql
```bash
$ yum install mysql-community-server
```

### �鿴Ĭ������
```bash
$ grep 'temporary password' /var/log/mysqld.log
```

### �޸�����
```bash
$ mysql -uroot -p 
$ ALTER USER 'root'@'localhost' IDENTIFIED BY 'Mysql!2017';
```