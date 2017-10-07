---
layout: post
date:   2016-07-07 22:40:00 +0800
categories: python
tags: [python]
---
## 技巧1
__file__是当前文件的绝对路径

os.path.dirname(__file__)

## 技巧2如何获取绝对路径？
import os

import sys

os.path.abspath(sys.argv[0])

## 技巧3
__name__如果当前是被直接执行的就是'__mian__'
if __name__ == '__main__':

main()

## python3 module of the week
[https://pymotw.com/3/](https://pymotw.com/3/)
