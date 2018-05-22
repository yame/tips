### 安装 GO

#### 下载地址
`https://golang.org/dl/`

#### linux
```sh
$ curl -O https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz
$ tar -C /usr/local -xzf go1.10.2.linux-amd64.tar.gz
$ mkdir -p ~/go; echo "export GOPATH=$HOME/go" >> ~/.bashrc
$ echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.bashrc
$ source ~/.bashrc
```