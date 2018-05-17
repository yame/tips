## Gradle 安装

下载地址： `https://gradle.org/releases/`

```bash
$ mkdir /opt/gradle
$ unzip -d /opt/gradle gradle-4.1-bin.zip
$ ls /opt/gradle/gradle-4.1

$ vim .bashrc
```

```vim
PATH=$PATH:/opt/gradle/gradle-4.1/bin
```

### 查看版本

```bash
$ gradle -v
```
