
---
tags: [java]
---

# 对spring boot应用进行测试


添加如下两个注解，编写测试类，可以测试Spring boot应用

```

@RunWith(SpringRunner.class) 运行Junit并支持Spring-test特性
@SpringBootTest 为springApplication创建上下文并支持SpringBoot特性

```
## spring boot的一些简单介绍

## junit的简单使用
注解
```
@Test
@Before
@After
@BeforeClass
@AfterClass
```
## testng
比起junit我更偏向于testng

主要的优点我认为是Listener和xml配置用例测试套
