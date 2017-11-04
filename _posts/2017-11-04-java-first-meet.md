---
tags: [java]
---

### setp 1 环境搭建
Mac + IntelliJ + jdk + maven

1. install jdk

[http://www.oracle.com/technetwork/java/javase/downloads/index.html](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

oracle官网下载jdk for mac，直接点击安装jdk-8u151-macosx-x64.dmg

验证`java -version`

2. install IntelliJ

[https://www.jetbrains.com/idea/download/#section=mac](https://www.jetbrains.com/idea/download/#section=mac)

3. install maven

什么是maven? 是否可以类比于python中的pip？

maven是一个项目构建工具，maven通过读取pom.xml去处理依赖，构建项目，等其他操作

我使用brew安装`brew install maven`

验证`mvn --version`

### setp 2 关于java的问题
通过问题和解答能够快速的了解一门语言的相关概念和使用方法。

问题如下：
java字符串可以像python那样遍历吗？

的确是有把字符串里的每个字符都打印出来的方法，但是无法像python那样把字符串当作可遍历对象。

java访问字符串中的字符的方法是charAt()

类中的private成员会被子类继承吗？

java中的import和python中的import的区别？
python中import是载入代码的必须手段
java中import是为了方便使用包中的类的手段，也就是说import是优化代码的方式，即使没有import通过全名也能够实现功能。



### setp 3 概念解析
方法重载overloading:java 7 入门经典中解释如下Java允许在类中使用同样的名称定义多个方法，只要每个方法拥有唯一的一套参数即可。在类中以相同的名称定义两个或者多个方法的机制称为方法重载。








