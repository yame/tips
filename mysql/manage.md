�����û�
create user 'uooc'@'%' identified by 'Uooc!2017';

��Ȩ:
GRANT privileges ON databasename.tablename TO 'username'@'host';

flush privileges;

�����û�Ȩ��
REVOKE privilege ON databasename.tablename FROM 'username'@'host';

����������û�����:
SET PASSWORD FOR 'username'@'host' = PASSWORD('newpassword');

ɾ���û�
DROP USER 'username'@'host';

�鿴�û�����Ȩ
show grants for dog@localhost;

�鿴���ݴ��λ��
show global variables like '%datadir%';