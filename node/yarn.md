$ sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo

如果你没有安装 Node.js，你也应该配置 NodeSource 仓库：

$ curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -

$ yum install yarn