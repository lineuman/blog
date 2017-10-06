---
layout: post
date:   2016-12-23 22:51:00 +0800
categories: python
tags: [python]
---

windows下使用sphinx生成静态网页。

官方教程，特详细
http://www.sphinx-doc.org/en/stable/tutorial.html

参考IBM
https://www.ibm.com/developerworks/cn/opensource/os-sphinx-documentation/index.html

安装

`pip install Sphinx`

命令使用

快速开始
sphinx-quickstart

这里写图片描述

生成html文档
make html

虽说长的丑点，不过还好了。
这里写图片描述

基本想法》》》》lineuman
我想构建一个用来协助工作的网站，当前对此网站一无所知，不知道网站模型，也不清楚网站知识。我需要一些前端和后端的知识。
前端我不是很了解——–先放下。
后端我打算采用Python django xadmin构建。

数据库在开发阶段使用sqlite，实际项目部署使用MySQL。
服务器在开发阶段使用自带的manager.py runsesrver, 实际项目部署使用Apache或者nginx

静态的网页，可以通过rst生成。

动态的网页通过python怎么实现我还不知道。
