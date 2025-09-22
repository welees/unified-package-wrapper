WeLees Unified Packager is a universal package manager wrapper supporting most Linux distributions.
Users of Unified Packager can perform management operations across most Linux distributions using a single set of commands.
Currently supported Linux distributions include:

* UOS
* Linux Mint
* Debian
* Kali
* Ubuntu
* CentOS
* Red Hat
* Fedora
* Arch Linux
* Manjaro
* MSYS2
* SUSE/OpenSUSE/OpenSUSE Leap
* Gentoo

If you wish to support a Linux distribution not listed, modify /etc/uni-pkg/config.ini according to the following rules:

Within the [distro] section, add:
id=packager
Where id is taken from the ID in /etc/os-release, and packager is the package manager command used by that Linux distribution.

Add a command section. The following example uses Arch Linux:
[pacman.cmd]
install=pacman -S
remove=pacman -Rs
search=pacman -Ss
list=pacman -Q
info=pacman -Qi
update=pacman -Sy
upgrade=pacman -Syu
reinstall=pacman -S
autoremove=pacman -Rns $(pacman -Qdtq)
download=pacman -Sw
clean=pacman -Sc

Add the parameter alias section, using Arch Linux as an example:
[pacman.alias]
y=--noconfirm

For any questions or suggestions, please email support@welees.com.

---------------------------------------------------------------------------------------------------------------------

WeLees unified packager是一个支持大多数LINUX发行版的通用包管理器封装。
使用unified pacakger的用户可以在大多数LINUX发行版上使用单一的命令组来执行管理操作。
目前unified packager支持的LINUX发行版有

* UOS 统信操作系统
* Linux Mint
* Debian
* Kali
* Ubuntu
* CentOS
* Red hat
* Fedora
* Arch Linux
* Manjaro
* MSYS2
* SUSE/Open SUSE/Open SUSE Leap
* Gentoo

如果希望支持列表中没有的LINUX发行版，请按以下规则修改/etc/uni-pkg/config.ini

在[distro]节中增加
id=packager
id取自/etc/os-release中的ID，packager则是该LINUX发行版使用的包管理器命令

增加命令节，以下以Arch Linux为例
[pacman.cmd]
install=pacman -S
remove=pacman -Rs
search=pacman -Ss
list=pacman -Q
info=pacman -Qi
update=pacman -Sy
upgrade=pacman -Syu
reinstall=pacman -S
autoremove=pacman -Rns $(pacman -Qdtq)
download=pacman -Sw
clean=pacman -Sc

增加参数别名节，以下以Arch Linux为例
[pacman.alias]
y=--noconfirm

有任何疑问或建议请向 support@welees.com 发邮件
