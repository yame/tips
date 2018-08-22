# docker 运行
```
$ docker run \
  --name jenkins \
  -u root \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean
  
```

下次可以直接启动

```
$ docker start jenkins
```


# 访问 
访问地址 hostname:8080

```
$ docker exec -it jenkins bash
#/ cat /var/jenkins_home/secrets/initialAdminPassword
```