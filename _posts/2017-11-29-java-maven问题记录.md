---
tags: [java]
---

maven遇到问题记录：

如何删除*.lastUpdated文件？
```
find ./ -name *.lastUpdated |xargs -I {} rm {}
```

maven pom中的配置说明

例如profile可以用来设置不同环境不同配置
```
<profiles>
        <profile>
            <id>dev</id>
            <activation>
                <activeByDefault>true</activeByDefault>
            </activation>
            <properties>
                <profileActive>dev</profileActive>
            </properties>
        </profile>
        <profile>
            <id>pre-produce</id>
            <properties>
                <profileActive>pre-produce</profileActive>
            </properties>
        </profile>
    </profiles>
```

maven pom中的denpendencyManagement是什么意思？

denpendencyManagement区别于单纯的dependencies

dependencies即使在子项目中不写该依赖项，那么子项目仍然会从父项目中继承该依赖项（全部继承）

dependencyManagement里只是声明依赖，并不实现引入，因此子项目需要显示的声明需要用的依赖。


```
mvn clean

mvn package

mvn install


```


## 不知道为什么
```
命令行执行mvn test后在打包根项目再点击reimport all maven
```



## groovy测试脚本在mvn test时候不运行的问题解决方法

我通过groovy编写基于testng的测试用例,想通过mvn test运行，结果无法运行原因

groovy + testng + maven

mvn 
configurations
sources
source配置问题


## maven中的标签解释
去除重复导入
```
exclusions
    exclusion

```

```
executions
   execution
```

