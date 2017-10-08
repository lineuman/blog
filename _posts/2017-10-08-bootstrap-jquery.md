---
tags: [javascript]
---

快速提升网页格调技巧：

background:url()

background-color:rgb()

background-size:100%
# 本文主要介绍bootstrap和jquery实现的各种效果

## jQuery

### fullPage.js

示例网站

[http://hr.163.com/product/yanxuan/](http://hr.163.com/product/yanxuan/)


我的实践：
```

server/
|--js/
   |--bootstrap.js
   |--jquery.js
|--css/
   |--bootstrap.css
   |--bootstrap.css.map
|--img/
   |--test.img
```


## boostrap 

### modal 模态框

### carousel旋转木马

遇到的问题
1.旋转木马使用不同的图片的时候，高度会改变

解决方法：自己设置图片所在div的高度这样的话就固定了。

```
<div class="item" style="height:400px;">
<img src="...">
</div>
```

2.<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>显示不准确问题
原因：我没有把对应的fonts文件放到服务端
