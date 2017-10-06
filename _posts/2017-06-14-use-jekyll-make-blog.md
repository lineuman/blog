---
layout: post
title:  "use jekyll to make blog"
date:   2017-06-14 23:25:16 +0800
categories: jekyll update
---

# jekyll+gitpages搭建博客

**类似于python中通过sphinx把rst文档转换为html，ruby同样可以把markdown转化为html**

jekyll是一个ruby实现的静态站点生成工具，你可以理解为通过markdown生成静态html的一种方法。

Transform your plain text into static websites and blogs

参考教程

[https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/)

[https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/)

[https://github.com/jekyll/minima#customization](https://github.com/jekyll/minima#customization)

[https://jekyllrb.com/docs/themes/](https://jekyllrb.com/docs/themes/)
### 安装ruby
ruby --version

ruby 2.2.6p396 (2016-11-15 revision 56800) [i386-mingw32]

### 安装jekyll

gem install jekyll bundler

### 使用jekyll建立项目

jekyll new

bundle

### 通过标记文本生成html

[https://jekyllrb.com/docs/usage/](https://jekyllrb.com/docs/usage/)

构建

jekyll build

本地服务器=> A development server will run at http://localhost:4000/

jekyll serve


## 添加百度站长统计
1.申请百度站长统计账号
2.将生成的js代码添加到需要统计的页面上来



