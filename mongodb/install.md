$ vim /etc/yum.repos.d/mongodb-org-3.4.repo


mongodb-org	A metapackage that will automatically install the four component packages listed below.
mongodb-org-server	Contains the mongod daemon and associated configuration and init scripts.
mongodb-org-mongos	Contains the mongos daemon.
mongodb-org-shell	Contains the mongo shell.
mongodb-org-tools	Contains the following MongoDB tools: mongoimport bsondump, mongodump, mongoexport, mongofiles, mongooplog, mongoperf, mongorestore, mongostat, and mongotop.


$ mongo