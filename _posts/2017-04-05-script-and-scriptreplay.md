---
layout: post
date:   2017-04-05 21:28:00 +0800
categories: linux
tags: [linux]
---
# script和scriptreplay录制和回放操作
scripts和scriptreplay就是那种不起眼，但真的是很有用处的命令。

script命令可以把你在终端的操作保存到一个文件中。

scriptreplay可以把回放你所录制的终端操作。

script  filename 记录操作到filename中

记录时序和终端操作

script --t 2>time.txt  log

回放操作

scriptreplay -t time.txt log
