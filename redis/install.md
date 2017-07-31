$ wget http://download.redis.io/releases/redis-4.0.1.tar.gz
$ tar xzf redis-4.0.1.tar.gz
$ cd redis-4.0.1
$ make

配置服务
$ vim /etc/systemd/system/redis.service

[Unit]
Description=Redis
After=network.target

[Service]
ExecStart=/usr/local/bin/redis-server --daemonize no
ExecStop=/usr/local/bin/redis-cli -h 127.0.0.1 -p 6379 shutdown

[Install]
WantedBy=multi-user.target


$ systemctl enable redis