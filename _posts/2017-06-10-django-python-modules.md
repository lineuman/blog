---
layout: post
title:  "Django里面的python module学习"
date:   2017-06-10 22:42:00 +0800
categories: django
---
[The Django template language](https://docs.djangoproject.com/en/1.11/ref/templates/api/)
可以根据数据流动的方向来进行学习理解。
首先要理解几个概念：
Template
Context
RequestContext
HttpResponse
template.render(context)
shortcut中的render
loder中的render_to_string

这几个概念结合起来就是，把上下文传递给模板，把模板载入成为字符串，利用字符串生成http响应对象。