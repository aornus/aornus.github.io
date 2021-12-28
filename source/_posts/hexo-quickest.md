---
title: hexo 一条龙
date: 2021-12-19 19:43:42
tags:
- hexo
- npm
- git
- ssh
categories:
- Linux
cover: https://gitee.com/aornus/blogimage/raw/master/hexo-logo.png
description: 让hexo快速从云端落地
katex:
comments:
copyright:
aside:
password:
hidden:
---

# hexo 一条龙服务

为了更好更快速的部署hexo博客，避免频繁的操作（都是因为懒），这里我将总结所有必须的命令，最终实现三分钟将hexo博客从远程同步到本地，并进行管理。

1. git 配置（全局）

   ```
   git config --global user.name "aoenus"
   git config --global user.email aornus@matrixmail.com
   git config --list
   ```

2. ssh配置

   * 公私钥生成

   ```shell 例子：
   cd ~/.ssh
   ssh-keygen -t rsa -b 4200 -C "linux@laptop" -f linux
   cat linux.pub
   //添加公钥到git账户
   ssh -i ~/.ssh/linux -T git@git***.com
   ```

   * ssh连接成功后，在.ssh 下创建`config`，内容如下：

   ```xml
   Host github.com
   HostName git***.com
   User aornus(用户名)
   IdentityFile ~/.ssh/私匙名
   IdentitiesOnly yes
   ```

   * 克隆远端项目

   ```
   git clone git@git***.com:aornus/aornus.git
   ```

3. npm配置

   ```
   sudo pacman -S npm   
   ```

   顺便更新到最新版本并使用淘宝源：[node使用](https://www.codenong.com/cs106531292/)

   ```shell
   npm config set registry https://registry.npm.taobao.org
   npm install -g npm
   #然后会有提示，按照最新版就好，这里是8.3.0版
   npm install -g npm@8.3.0
   ```

   安装hexo包 （全局）

   ```
   npm install -g hexo-cli
   ```

4. hexo恢复部署

   ```shell
   cd ~/aornus
   npm install --save
   hexo clear && hexo s -g
   ```
   
5. picgo配置（gitee）

   1. 下载picgo的[Appimagine](https://github.com/Molunerfinn/picgo/releases)

      快速下载-->[地址](https://github.91chi.fun//https://github.com//Molunerfinn/PicGo/releases/download/v2.3.0/PicGo-2.3.0.AppImage)
   
   2. 安装插件，这里选用的是*zhanghuid*开发的`gitee 2.05`
   ```
   #我的仓库地址：https://gitee.com/aornus/blogimage
   #配置如下：
         owner:aornus
         repo:blogimage
         parh:
         token:0qa*********d9
         message:picgo linux
   ```
