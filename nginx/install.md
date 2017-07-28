œ¬‘ÿµÿ÷∑£∫http://nginx.org/en/download.html

$ curl -O http://nginx.org/download/nginx-1.12.1.tar.gz
$ tar -zxf nginx-1.12.1.tar.gz 
$ cd nginx-1.12.1
$ ./configure 
$ make && make install 
$ cd /usr/local/nginx
$ 
$ 
$ vim /etc/systemd/system/nginx.service

===========================================
[Unit]
Description= Nginx
After=network.target

[Service]
Type=forking
ExecStart=/usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf
ExecReload=/usr/local/nginx/sbin/nginx -s reload
ExecStop=/usr/local/nginx/sbin/nginx -s quit
PrivateTmp=true

[Install]
WantedBy=multi-user.target
==============================================

$ systemctl enable nginx