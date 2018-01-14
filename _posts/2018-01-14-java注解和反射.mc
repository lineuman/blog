---
tags: [java]
---
# java注解和反射
起因: 我想通过注解的方式向我的代码中传入一些数据，例如用户名和密码

伪代码如下
```
@FastLogin(user="root", password="root")

@Test
@FastLogin()
public void someTestCase(){
  post()
}

public static void post(){
//这里去获取方法的注解
}
```
