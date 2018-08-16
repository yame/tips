```
$ vim /etc/sysconfig/network-scripts/ifcfg-enp0s8

DEVICE="enp0s8"
BOOTPROTO="static"
IPADDR="192.168.56.xx"
PV6_AUTOCONF=no
NETMASK=255.255.255.0
ONBOOT=yes  

$ systemctl restart network

```