网络=》网卡1
连接方式：网络地址转换（NAT）
端口转发：22 =》 22

挂载点：
/   （大一些）
/boot
/home
/root

查看使用空间
[root@HiYame ~]# df -h
Filesystem                 Size  Used Avail Use% Mounted on
/dev/mapper/centos-root     50G  840M   50G   2% /
devtmpfs                   590M     0  590M   0% /dev
tmpfs                      600M     0  600M   0% /dev/shm
tmpfs                      600M  7.8M  592M   2% /run
tmpfs                      600M     0  600M   0% /sys/fs/cgroup
/dev/sda1                  497M  122M  375M  25% /boot
/dev/mapper/centos-root00   44G   33M   44G   1% /root
/dev/mapper/centos-home     40G   33M   40G   1% /home
tmpfs                      120M     0  120M   0% /run/user/0


