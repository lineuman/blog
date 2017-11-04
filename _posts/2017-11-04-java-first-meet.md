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

