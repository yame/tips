```
$ yum install rsync

$ mkdir -p /usr/local/rsync/ && vim /usr/local/rsync/rsyncd.conf 

### 全局参数 ###
port=8730 # 【注意：默认端口是873，这里改用8730了】
motd file=/usr/local/rsync/rsyncd.motd
log file=/usr/log/rsyncd.log
pid file=/var/run/rsyncd.pid

$ vim /usr/local/rsync/rsyncd.motd


welcome use rsync service !

```

$ rsync --daemon --config=/usr/local/rsync/rsyncd.conf

