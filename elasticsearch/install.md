## 安装 Elasticsearch

```
$ curl -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.2.tar.gz
$ tar -zxvf elasticsearch-6.3.2.tar.gz -C /opt/
$ cd /opt/ && mv elasticsearch-6.3.2 elasticsearch
$ useradd -G elasticsearch
$ chown -R elasticsearch:elasticsearch elasticsearch
$ su elasticsearch
$ ./elasticsearch/bin/elasticsearch
```

## 安装 Kibana
```
$ curl https://artifacts.elastic.co/downloads/kibana/kibana-6.4.0-linux-x86_64.tar.gz -o ~/downloads/kibana-6.4.0-linux-x86_64.tar.gz
$ tar -zxvf ~/downloads/kibana-6.4.0-linux-x86_64.tar.gz -C /opt
$ cd /opt
$ mv kibana-6.4.0-linux-x86_64/ kibana
$ vim config/kibana.yml
```

## 安装 LogStash
```
$ curl -O https://artifacts.elastic.co/downloads/logstash/logstash-6.4.0.tar.gz
$ tar -zxvf logstash-6.4.0.tar.gz -C /opt/
$ cd /opt
$ mv logstash-6.4.0 logstash
$ vim logstash/config/logstash.yml
```

## 安装filebeat
```
$ curl -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.4.0-linux-x86_64.tar.gz
$ tar -xzvf filebeat-6.4.0-linux-x86_64.tar.gz 
$ mv filebeat-6.4.0-linux-x86_64.tar.gz ~/downloads/
```