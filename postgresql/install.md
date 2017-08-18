https://www.postgresql.org/


yum install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm

yum install postgresql96

yum install postgresql96-server

/usr/pgsql-9.6/bin/postgresql96-setup initdb
systemctl enable postgresql-9.6
systemctl start postgresql-9.6

# /var/lib/pgsql/9.6/data/

vim /var/lib/pgsql/9.6/data/pg_hba.conf
ÃÜÂëµÇÂ¼ÉèÖÃmd5
