systemctl list-units --type=service
systemctl daemon-reload
systemctl start nginx.service              #����nginx����
systemctl enable nginx.service             #���ÿ���������
systemctl disable nginx.service            #ֹͣ����������
systemctl status nginx.service             #�鿴����ǰ״̬
systemctl restart nginx.service��          #������������
systemctl list-units --type=service        #�鿴�����������ķ���

