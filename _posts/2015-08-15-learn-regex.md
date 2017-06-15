---
layout: post
title:  "正则表达式"
date:   2015-08-15 15:14:00 +0800
categories: regex
---

推荐一个regex学习网站[http://regexr.com/](http://regexr.com/)

# re正则表达式

我总是觉得正则表达式应该有远高于它名气的作用,所以我要学习它,这里就是开始,而非结束。

我的现在的概念:爬虫用的正则表达式,提取出我想要的东西来的一种方法.

正则表达式产生于计算机远古时代，经过不断地发展,现在已经被用到了很多地方，sed,grep,vi等等一些工具都支持一定的正则表达式，在Django框架中，url的匹配也是使用的正则表达式。

正则表达式也是有其自身的语法规则.

## 正则表达式常常用来干什么呢?
正则表达式最常用的就是用来匹配模式，在查找，搜索方面有非常便捷的作用。当然，便捷是相对的，如果想熟练地应用正则表达式，必须学习正则表达式基础。

##  一些符号的含义
. 任意字符的匹配

*匹配之前项0次或者多次

？匹配之前项0次或1次

+匹配之前项1次或多次

^匹配行首

$匹配行尾

[]匹配包含在【字符】中的任一个字符

[^] 匹配【^字符】之外的字符

[0-9]匹配指定范围的一个字符

[a-z]匹配指定范围的一个字符

[A-Z]匹配指定范围的一个字符

{n}匹配之前项n次

{n,}匹配之前项至少n次

{n,m}匹配之前项至少n次，最多m次

\转义


后记:在博客迁移的时候遇到了一个问题，在特殊字符处理的问题上，我毫无头绪，markdown语法怎么保留原始字符呢？