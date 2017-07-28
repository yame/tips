systemctl list-units --type=service
systemctl daemon-reload
systemctl start nginx.service              #启动nginx服务
systemctl enable nginx.service             #设置开机自启动
systemctl disable nginx.service            #停止开机自启动
systemctl status nginx.service             #查看服务当前状态
systemctl restart nginx.service　          #重新启动服务
systemctl list-units --type=service        #查看所有已启动的服务

