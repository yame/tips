# docker ����
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

�´ο���ֱ������

```
$ docker start jenkins
```


# ���� 
���ʵ�ַ hostname:8080

```
$ docker exec -it jenkins bash
#/ cat /var/jenkins_home/secrets/initialAdminPassword
```