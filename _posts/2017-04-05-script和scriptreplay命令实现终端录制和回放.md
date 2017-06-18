---
layout: post
title:  " python解码编码"
date:   2017-04-05 21:28:00 +0800
categories: linux
tags: [linux]
---
script命令可以把你在终端的操作保存到一个文件中。
scriptreplay可以把回放你所录制的终端操作。

script  filename 记录操作到filename中

记录时序和终端操作
script --t 2>time.txt  log

回放操作
scriptreplay -t time.txt log