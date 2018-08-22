https://www.if-not-true-then-false.com/2010/install-virtualbox-guest-additions-on-fedora-centos-red-hat-rhel/

## Fedora 21/20/19/18/17/16, CentOS/RHEL 7/6/5 ##
$ yum update kernel*

$ reboot

$ mkdir /media/VirtualBoxGuestAdditions
$ mount -r /dev/cdrom /media/VirtualBoxGuestAdditions

4. Install following packages

On CentOS/Red Hat (RHEL) 7/6/5, EPEL repo is needed

## CentOS 7 and Red Hat (RHEL) 7 ##
$ rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

## CentOS 6 and Red Hat (RHEL) 6 ##
$ rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
 
## CentOS 5 and Red Hat (RHEL) 5 ##
$ rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-5.noarch.rpm

## Fedora 21/20/19/18/17/16/15/14/13/12, CentOS/RHEL 7/6/5 ##
$ yum install gcc kernel-devel kernel-headers dkms make bzip2 perl

$ KERN_DIR=/usr/src/kernels/`uname -r`

## Export KERN_DIR ##
$ export KERN_DIR

6. Install Guest Additions

$ cd /media/VirtualBoxGuestAdditions

# 32-bit and 64-bit systems run following
$ ./VBoxLinuxAdditions.run



$ vim /etc/rc.local
$ mount -t vboxsf github /root/github