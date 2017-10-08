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
使用模态窗口，您需要有某种触发器。您可以使用按钮或链接

遇到的问题：
1.为什么我在html添加了下面这段代码后modal没有显示出来？
```
<div class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
```

答：隐藏状态的modal,只有特定事件发生的时候才显示

2.怎么触发modal显示呢？

通过 data 属性：在控制器元素（比如按钮或者链接）上设置属性 data-toggle="modal"，同时设置 data-target="#identifier" 或 href="#identifier" 来指定要切换的特定的模态框（带有 id="identifier"）。
通过 JavaScript：使用这种技术，您可以通过简单的一行 JavaScript 来调用带有 id="identifier" 的模态框：
$('#identifier').modal(options)

法一
```
<a href="#" data-toggle="modal" data-target="#myModal">
  点我修改	
</a>
```
法二
```
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>
```

3.怎么通过modal传送数据？无论通过何种方式，本质上都是要与服务端进行通信的的。

modal + ajax可以实现数据的传送


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

3.在图片上怎么添加超链接？
解决方法：图片上添加超链接实际上是把`<img>`放到`<a>`中

4.怎么通过js代码操作旋转木马？
待解决
