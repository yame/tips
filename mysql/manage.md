### �����û�
```sql
create user 'uooc'@'%' identified by 'Uooc!2017';
```

### ��Ȩ:
```sql
GRANT privileges ON databasename.tablename TO 'username'@'host';

flush privileges;
```

### �����û�Ȩ��
```sql
REVOKE privilege ON databasename.tablename FROM 'username'@'host';
```

### ����������û�����:
```sql
SET PASSWORD FOR 'username'@'host' = PASSWORD('newpassword');
```

### ɾ���û�
```sql
DROP USER 'username'@'host';
```

### �鿴�û�����Ȩ
```sql
show grants for dog@localhost;
```

### �鿴���ݴ��λ��
```sql
show global variables like '%datadir%';
```