---
layout: post
tags: [javascript]
---

# REACT
what is REACT?

## jsx
jsx compiler turn jsx to js

## example
var h1 = <h1>hello world</h>

## how if statement


## React function

ReactDOM.render()

ReactDOM.createElement()

## React Components

every component must come from a component class

## 2018-01-20学习补充
constructor

render

实例代码
```
class Tmp extends Component{

constructor(props){
super(props)
this.state = {somekey:true
}
// 自定义函数
handleClick(e) = {
//这里不能直接访问this，原因是
// React components using ES6 classes no longer autobind this to non React methods. In your constructor, add:
// this.onChange = this.onChange.bind(this)
}
render()
{
return  <h1 onClick={this.handleClick}>hello</h1>
}
```
