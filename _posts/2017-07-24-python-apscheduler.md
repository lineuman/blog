---
tags: [python]
---

# python apscheduler

reference:

[https://github.com/agronholm/apscheduler](https://github.com/agronholm/apscheduler)

你可以理解为提供了一个接口，这个接口提供了一种功能，这种功能就是定时任务，通俗来讲就是在指定时间，以指定的方式，调用函数或者执行命令。

## example 
1. 在指定时刻运行
2. 运行的间隔
间隔调度器，例如可以用来创建每隔一天运行一次的扫描任务，或者每周运行一次的扫描任务
3. 运行一次

## 看源码，看源码，看源码

有几个概念需要掌握

schedulers
executors
jobstores

## FAQ
我想在某一个时刻，往调度器中添加一个任务，那么我如何添加？
scheduler.add_job? 但是我要如何获取scheduler?我觉得应该是存储于数据库中的才能友好的访问。

