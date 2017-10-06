---
tags: [security]
---
本文介绍http相关的一些安全问题,推荐阅读道哥的《白帽子讲web安全》

## http parameter pollution

多个参数含有相同的名字

例如：
```
?color=blue?color=red
```

reference

[https://www.owasp.org/images/b/ba/AppsecEU09_CarettoniDiPaola_v0.8.pdf](https://www.owasp.org/images/b/ba/AppsecEU09_CarettoniDiPaola_v0.8.pdf)

In case of multiple parameters with the same name, HTTP back-ends behave in several ways

我觉得我有必要按照下面的表格搭建环境试一试

Given the URL and querystring: http://example.com/?color=red&color=blue

|Web Application Server Backend |Parsing Result |Example|
|-------------------------------|---------------|-------|
|ASP.NET / IIS|All occurrences concatenated with a comma|color=red,blue|
|ASP / IIS|All occurrences concatenated with a comma|color=red,blue|
|PHP / Apache|	Last occurrence only|	color=blue|
|PHP / Zeus|	Last occurrence only|	color=blue|
|JSP, Servlet / Apache Tomcat|	First occurrence only|	color=red|
|JSP, Servlet / Oracle Application Server 10g|	First occurrence only|	color=red|
|JSP, Servlet / Jetty|	First occurrence only|	color=red|
|IBM Lotus Domino|	Last occurrence only|	color=blue|
|IBM HTTP Server|	First occurrence only|	color=red|
|mod_perl, libapreq2 / Apache|	First occurrence only|	color=red|
|Perl CGI / Apache|	First occurrence only|	color=red|
|mod_wsgi (Python) / Apache|	First occurrence only|	color=red|
|Python / Zope|	All occurrences in List data type|	color=['red','blue']|
