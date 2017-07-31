yum repolist enabled #显示启用的仓库
yum repolist all #显示所有的仓库

yum install yum-utils -y 
yum-config-manager --disable nodesource
yum-config-manager --enable nodesource
