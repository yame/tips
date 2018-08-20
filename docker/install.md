# 下载

```
$ curl -O https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.03.1.ce-1.el7.centos.x86_64.rpm
$ yum install docker-ce-18.03.1.ce-1.el7.centos.x86_64.rpm
$ systemctl start docker
```


# 安装 docker-compose
```
$ sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

$ sudo chmod +x /usr/local/bin/docker-compose
```


# 镜像加速
```
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://2poiu68q.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

```


# 设置docker数据目录
```
$ systemctl stop docker
$ vi /usr/lib/systemd/system/docker.service
$ mkdir /docker

//设置目录
ExecStart=/usr/bin/dockerd --data-root=/docker

$ systemctl daemon-reload
$ systemctl start docker
```