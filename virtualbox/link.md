 原来VirtualBox从安全角度出发，限制了软链接的创建，需要打开相应的Feature。以下为详细步骤：

    1、关闭 VirtualBox。

    2、将VirtualBox安装目录的路径加入系统环境变量PATH中。

    3、使用管理员身份，打开命令行窗口，执行如下命令：
        VBoxManage setextradata YOURVMNAME VBoxInternal2/SharedFoldersEnableSymlinksCreate/YOURSHAREFOLDERNAME 1  
		
		VBoxManage setextradata HiYame VBoxInternal2/SharedFoldersEnableSymlinksCreate/work 1  
		VBoxManage setextradata HiYame VBoxInternal2/SharedFoldersEnableSymlinksCreate/hiyame 1  
		
		//查看效果
		VBoxManage getextradata HiYame enumerate 

        其中：
        YOURVMNAME为虚拟机中ubuntu系统的名称
        YOURSHAREFOLDERNAME 为共享的目录名称

    4、“以管理者身份运行” VirtualBox　即可！
	
	
	
	扩容空间
	关闭虚拟机
VBoxManage modifyhd <uid> --resize <mb大小>

启动虚拟机
df -h
fdisk /dev/sda
	 
首先输入命令：n(添加新分区)之后回车： 
接着输入命令:p 
剩下步骤全按回车默认， 
最后输入命令w保存分区信息。

格式化
mkfs -t ext4 /dev/sda4


mkdir /docker
mount /dev/sda3 /docker

/dev/sda3     /docker   ext4    defaults  0  1
