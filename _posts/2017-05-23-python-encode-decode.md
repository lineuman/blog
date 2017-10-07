---
layout: post
date:   2017-05-23 22:37:00 +0800
categories: python
---
## 编码解码

一.几个特别容易混淆和弄不清的概念
参考http://www.cnblogs.com/guosq/p/6378639.html
在python中，编码解码其实是不同编码系统间的转换，默认情况下，转换目标是Unicode，即编码unicode→str，解码str→unicode，其中str指的是字节流，而str.decode是将字节流str按给定的解码方式解码，并转换成utf-8形式，u.encode是将unicode类按给定的编码方式转换成字节流str。
1.对于字符的编码解码
普通字符串，unicode字符串，以指定方式编码的字符序列。

2.对于文件的编码解码
文件的编码就是文件所存储字符串的编码方式

3.python代码第一行的# -*- coding:utf-8 -*-

4.sys.setdefaultencoding

二.常见错误类型

当我调用str1.decode('utf-8')的时候
[python] view plain copy
return codecs.utf_8_decode(input, errors, True)
odeDecodeError: 'utf8' codec can't decode byte 0xc4 in position 0: invalid continuation byte

三.常见使用方式

1.将unicode字符转成utf-8编码的序列
```
[python] view plain copy
>>> u'你好'.encode('utf-8')
'\xe4\xbd\xa0\xe5\xa5\xbd'
```
2.将unicode字符转化成gbk编码的序列
```
[python] view plain copy
>>> u'你好'.encode('gbk')
'\xc4\xe3\xba\xc3'
```
3.将字符串转化成unicode字符

首先我们无法得知给定的一个字符串是以什么方式编码的。
我们猜测是utf-8编码的，就以utf-8来进行解码 str2.decode('utf-8')，从而得到unicode
若我们猜测是gbk编码的，就以gbk来进行解码，str3.decode('gbk')，从而得到unicode
