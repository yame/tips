### 下载地址

`http://www.oracle.com/technetwork/java/javase/downloads/index.html`

### 安装

```bash
$ rpm -ivh jdk-8u144-linux-x64.rpm
```

### 查看版本

```bash
$ java -version
```

### 安装目录

`/usr/java/latest/`

### 设置环境变量

```bash
$ vim /etc/profile.d/java.sh
```

```bash
#!/bin/bash

export JAVA_HOME=/usr/java/latest/
```
