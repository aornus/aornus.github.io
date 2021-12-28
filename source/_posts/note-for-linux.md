---
title: Note for linux
date: 2021-08-02 18:31:36
tags: 
- snap
- npm
- git
- ssh
updated:
cover: /images/top-5-linux-shells-and-how-to-install-them.jpg
categories: 
- Linux
keywords:
description: 解决的不仅仅是一个问题，而是整个世界！--Sun
copyright:
copyright_author:
copyright_author_href:
copyright_url:
copyright_info:
mathjax:
highlight_shrink:

---

# 问题与解决

![img](/images/top-5-linux-shells-and-how-to-install-them.jpg)

 >  **Q_1：  error: cannot list snaps: cannot communicate with server: Get "http://localhost/v2/snaps": dial unix /run/snapd.socket: connect: no such file or directory**  
 >  原因：未启动snapd服务 --> sudo systemctl start snapd

# 常用命令记录

1. Snap  

  ```
   snap list                   列出所有已安装的snap软件包
   snap find <keyword>         按照keyword来寻找可以安装的snap软件包
   snap install <software>           安装软件
   snap refresh <software>           更新软件
   snap refresh all                  更新所有的软件
   snap remove <software>            卸载软件
   snap revert <software>            将软件还原到之前的版本
  ```


2. 查看字体：`fc-list`  

3. 更新grub：   

   ```
   sudo grub-mkconfig -o /boot/grub/grub.cfg
   ```

4. 强制清空回收站： 

   ```
   sudo rm -rf ~/.local/share/Trash/*
   ```

5. latex
   指定编译命令：  `% !TeX program = xelatex`  
    PS:使用htlatex可以把文档编译成html格式
   
6. Pacman  

 - 安装包  
   - pacman -S 包名：安装多个包，需以空格分隔包名。  
   - pacman -Sy 包名：与上面命令不同的是，该命令将在同步包数据库后再执行安装。
   - pacman -Sv 包名：在显示一些操作信息后执行安装。
   - pacman -U：安装本地包，其扩展名为 pkg.tar.gz。
   - `pacman -U: http://www.example.com/repo/example.pkg.tar.xz 安装一个远程包（不在 pacman 配置的源里面）`   
 - 删除包  
   -  pacman -R 包名：该命令将只删除包，保留其全部已经安装的依赖关系
   -  `pacman -Rs 包名：在删除包的同时，删除其所有没有被其他已安装软件包使用的依赖关系`
   -  pacman -Rsc 包名：在删除包的同时，删除所有依赖这个软件包的程序
   -  pacman -Rd 包名：在删除包时不检查依赖。
 - 搜索包  
   -  pacman -Ss 关键字：在仓库中搜索含关键字的包。
   -  pacman -Qs 关键字： 搜索已安装的包。
   -  pacman -Qi 包名：查看有关包的详尽信息。
   -  pacman -Ql 包名：列出该包的文件。

 - 其他用法
   -  pacman -Sw 包名：只下载包，不安装。
   -  pacman -Scc：清理所有的缓存文件
   -  ~~pacman -Sc~~：清理未安装的包文件，包文件位于 /var/cache/pacman/pkg/ 目录。  
      上面为不推荐命令，会删除所有旧版本包  
      1.查看占用空间： \$ du -sh /var/cache/pacman/pkg/  
      2.清理占用：sudo paccache -r -k 1
   -  清理缓存参考文章：[The Recommended Way To Clean The Package Cache In Arch Linux](https://ostechnix.com/recommended-way-clean-package-cache-arch-linux/) 

7. npm&node.js	

   ```
   node -v 查看版本
   
   npm -v
   
   npm install -g npm 更新npm
   
   npm cache clean -f 清除npm缓存
   
   npm install -g n 安装n模块
   
   n stable 升级node.js到最新稳定版
   ```

8. git&ssh使用

   * ssh参数说明
     * -1：强制使用ssh协议版本1
     * -2：强制使用ssh协议版本2
     * -4：强制使用IPv4地址
     * -6：强制使用IPv6地址
     * -A：开启认证代理连接转发功能
     * -a：关闭认证代理连接转发功能
     * -b：使用本机指定地址作为对应连接的源ip地址
     * -C：请求压缩所有数据
     * -c：选择所加密的密码型式 （blowfish|3des 预设是3des）
     * -e：设定跳脱字符
     * -F：指定ssh指令的配置文件
     * -f：后台执行ssh指令
     * -g：允许远程主机连接主机的转发端口
     * **-i：指定身份文件（预设是在使用者的家目录 中的 .ssh/identity）**
     * -l：指定连接远程服务器登录用户名
     * -N：不执行远程指令
     * -n：重定向stdin 到 /dev/null
     * -o：指定配置选项
     * -p：指定远程服务器上的端口（默认22）
     * -P：使用非特定的 port 去对外联机（注意这个选项会关掉 RhostsAuthentication 和 RhostsRSAAuthentication）
     * -q：静默模式
     * -T：禁止分配伪终端
     * -t：强制配置 pseudo-tty
     * -v：打印更详细信息
     * -X：开启X11转发功能
     * -x：关闭X11转发功能
     * -y：开启信任X11转发功能
     * -L listen-port:host:port 指派本地的 port 到达端机器地址上的 port
   * ssh-keygen 参数说明
     * -a	在使用 -T 对 DH-GEX 候选素数进行安全筛选时需要执行的基本测试数量。
     * -B	显示指定的公钥/私钥文件的 bubblebabble 摘要。
     * **-b    指定密钥长度。对于RSA密钥，最小要求768位，默认是2048位。**DSA密钥必须恰好是1024位(FIPS 186-2 标准的要求)。
     * **-C	提供一个新注释**
     * -c    要求修改私钥和公钥文件中的注释。
     * -D	下载存储在智能卡 reader 里的 RSA 公钥。
     * -e    读取OpenSSH的私钥或公钥文件，并以 RFC 4716 SSH 公钥文件格式在 stdout 上显示出来。该选项能够为多种商业版本的 SSH 输出密钥。
     * -F	在 known_hosts文件中搜索指定的 hostname ，并列出所有的匹配项。这个选项主要用于查找散列过的主机名/ip地址，还可以和 -H 选项联用打印找到的公钥的散列值。
     * **-f	指定密钥文件名。**
     * -G	为 DH-GEX 产生候选素数。这些素数必须在使用之前使用 -T 选项进行安全筛选。
     * -g	在使用-r打印指纹资源记录的时候使用通用的DNS格式。
     * -H	对 known_hosts 文件进行散列计算。这将把文件中的所有主机名/ip地址替换为相应的散列值。原来文件的内容将会添加一个".old"后缀后保存。这些散列值只能被 ssh 和 sshd 使用。这个选项不会修改已经经过散列的主机名/ip地址，因此可以在部分公钥已经散列过的文件上安全使用。
     * -i	读取未加密的SSH-2兼容的私钥/公钥文件，然后在 stdout 显示OpenSSH兼容的私钥/公钥。该选项主要用于从多种商业版本的SSH中导入密钥。
     * -l	显示公钥文件的指纹数据。它也支持 RSA1 的私钥。对于RSA和DSA密钥，将会寻找对应的公钥文件，然后显示其指纹数据。
     * -M	指定在生成 DH-GEXS 候选素数的时候最大内存用量(MB)。
     * -N	提供一个新的密语。
     * -P	提供(旧)密语。
     * -p	要求改变某私钥文件的密语而不重建私钥。程序将提示输入私钥文件名、原来的密语、以及两次输入新密语。
     * -q	安静模式。用于在 /etc/rc 中创建新密钥的时候。
     * -R	从 known_hosts 文件中删除所有属于 hostname 的密钥。这个选项主要用于删除经过散列的主机(参见 -H 选项)的密钥。
     * -r	打印名为 hostname 的公钥文件的 SSHFP 指纹资源记录。
     * -S	指定在生成 DH-GEX 候选模数时的起始点(16进制)。
     * -T	测试 Diffie-Hellman group exchange 候选素数(由 -G 选项生成)的安全性。
     * -t	指定要创建的密钥类型。可以使用："rsa1"(SSH-1) "rsa"(SSH-2) "dsa"(SSH-2)
     * -U	把现存的RSA私钥上传到智能卡 reader
     * -v	详细模式。ssh-keygen 将会输出处理过程的详细调试信息。常用于调试模数的产生过程。重复使用多个 -v 选项将会增加信息的详细程度(最大3次)。
     * -W	指定在为 DH-GEX 测试候选模数时想要使用的 generator。
     * -y	读取OpenSSH专有格式的公钥文件，并将OpenSSH公钥显示在 stdout 上。

   ```shell 例子：
   ssh-keygen -t rsa -b 4200 -C "redmi10@termux" -f redmi10
   
   ssh -i ~/.ssh/redmi10 -T git@github.com
   ```
   
   * ssh连接成功但用ssh，`gitclone`仍然失败的解决办法:在`.ssh/`下创建`config`，内容如下：
   
     ```shell
     Host github.com
     HostName github.com
     User aornus(用户名)
     IdentityFile ~/.ssh/私匙名
     IdentitiesOnly yes
     
     Host gitee.com
     HostName gitee.com
     User aornus(用户名)
     IdentityFile ~/.ssh/私匙名
     IdentitiesOnly yes
     ```
   
   
   10. Pandoc使用：[pandoc 强大的文档格式转换工具 | Omics - Hunter](https://evvail.com/2021/02/02/2184.html)
   
   11. 安装asprite：
   
       ```
       sudo pacman -U https://aur.andontie.net/x86_64/aseprite-1.2.27-1-x86_64.pkg.tar.zst  
       #gpg钥匙失败
       ```
   
