增加用户
create user 'uooc'@'%' identified by 'Uooc!2017';

授权:
GRANT privileges ON databasename.tablename TO 'username'@'host';

flush privileges;

撤销用户权限
REVOKE privilege ON databasename.tablename FROM 'username'@'host';

设置与更改用户密码:
SET PASSWORD FOR 'username'@'host' = PASSWORD('newpassword');

删除用户
DROP USER 'username'@'host';

查看用户的授权
show grants for dog@localhost;

查看数据存放位置
show global variables like '%datadir%';