�� https://dev.mysql.com/downloads/repo/yum/ ���زֿ�
��װ rpm -Uvh platform-and-version-specific-package-name.rpm

��װmysql

$ yum install mysql-community-server

�鿴Ĭ������
$ grep 'temporary password' /var/log/mysqld.log

�޸�����
$ mysql -uroot -p 
$ ALTER USER 'root'@'localhost' IDENTIFIED BY 'Mysql!2017';
