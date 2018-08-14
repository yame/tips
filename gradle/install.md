## Gradle 安装

下载地址： `https://gradle.org/releases/`

```bash
$ curl -O https://downloads.gradle.org/distributions/gradle-4.9-bin.zip
$ mkdir /opt/gradle
$ unzip -d /opt/gradle gradle-4.9-bin.zip
$ ls /opt/gradle/gradle-4.9

$ ln -s /opt/gradle/gradle-4.9/bin/gradle /usr/local/bin/gradle
```

### 查看版本

```bash
$ gradle -v
```
