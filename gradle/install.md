download https://gradle.org/releases/
$ mkdir /opt/gradle
$ unzip -d /opt/gradle gradle-4.1-bin.zip

$ ls /opt/gradle/gradle-4.1

$ vim .bashrc 
PATH=$PATH:/opt/gradle/gradle-4.1/bin
$ gradle -v