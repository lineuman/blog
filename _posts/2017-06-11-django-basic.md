---
layout: post
title:  "Django Basic"
date:   2017-06-11 19:44:00 +0800
categories: django
tags: [django]
---
一个后台web框架应该提供三种功能
1. url调度
2. 数据模型抽象
3.  模板的渲染

学习Django这三个功能的实现，是实践Django的好办法。
除此之外，Django还有许多要素。

### Forms
用来生成前端的表单
用在后端做数据校验

### Session
1. 基于数据库的会话
2.  使用内存缓存的会话
3. file-based 会话
4. cookie-based 会话

### Middleware
request解析之时，调用视图之前，Django会按照MIDDLEWARE配置里面定义的顺序依次调用中间件来处理request

### Templates
一个Django项目能够配置一个或者多个模板引擎（当然也可以是0个）

### URL调度
找到urlpatterns这个列表，依次进行匹配
