yum repolist enabled #显示启用的仓库
yum repolist all #显示所有的仓库

yum install yum-utils -y 
yum-config-manager --disable nodesource
yum-config-manager --enable nodesource

yum update  //更新软件
rpm -qa 查看安装的软件