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