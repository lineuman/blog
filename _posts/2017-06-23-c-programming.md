---
layout: post
tags: [c]
---
真的是太欣赏c的速度了，但如果你连c的指针计算都搞不定，那就好比你活生生的错过了绝世美女,如果真的是那样，人生就太遗憾了。

## c常见问题

1. double free:free已经free的内存。

2. 访问已经释放的内存

## gcc
## gdb
## glibc
## /usr/include


[https://en.wikibooks.org/wiki/C_Programming/Simple_input_and_output](https://en.wikibooks.org/wiki/C_Programming/Simple_input_and_output)


### data types

In Standard C there are four basic data types. They are int, char, float, and double.

### output and input
printf

```
%d  int
%f  float
%c  char
%s   string
%p pointer
```

scanf

it might read as: "Read in an integer from the user and store it at the address of variable a ".

```
scanf("%d", &a);

```

```
scanf("%s", a);
```
**This is because, whenever you use a format specifier for a string (%s), the variable that you use to store the value will be an array and, the array names (in this case - a) themselves point out to their base address and hence, the address of operator is not required.**

### oprator
```   
   &         Address-of; value is the location of the operand(取地址)
   
   *         Contents-of; value is what is stored at the location（取内容）
```


或与非
```
||
&&
!
```
## Control flow
### if

```
if (conditions)
{
// do something
}
else if (conditions)
{
// do otherthing
}
else
{
// do something
}
```

### for 
```
int i = 0;
for(i=0;i<100;i++)
{
  printf("%d", i);
}
```

### while

```
int i = 0;
while (i < 100)
{
 //do something
 i++;
}
```

### do...while

```
do{
}while(condition)
```

### break continue
break 跳出循环

continue 跳出本次循环

### goto
```
Start:
   if (!''cond1'') goto End;
   S;
   if (''cond2'') goto End;
   T;
   goto Start;
 End:
   /* ... */
```

### switch case
```
 switch (something) {
 case 2:
 case 3:
 case 4:
   /* some statements to execute for 2, 3 or 4 */
   break;
 case 1:
 default:
   /* some statements to execute for 1 or other than 2,3,and 4 */
   break;
 }
 ```

## Pointers and arrays

指针是地址

指针变量是用来存放指针的变量

空指针的存放的值为0

```
#include <stdio.h>

int main () {

   int  *ptr = NULL;

   printf("The value of ptr is : %x\n", ptr  );
 
   return 0;
}
When the above code is compiled and executed, it produces the following result −

The value of ptr is 0
```

指针算数
[https://www.tutorialspoint.com/cprogramming/c_pointer_arithmetic.htm](https://www.tutorialspoint.com/cprogramming/c_pointer_arithmetic.htm)
有四种算数操作符可以应用到指针变量上面，`++`, `--`, `+`, `-`

### Incrementing a Pointer

### Decrementing a Pointer

### Pointer Comparisons



sizeof

## glibc一些函数

[https://www.tutorialspoint.com/c_standard_library/stdio_h.htm](https://www.tutorialspoint.com/c_standard_library/stdio_h.htm)
### stdlib.h
```
void *malloc(size_t size); //使用malloc分配的内存是没有初始化的
void *calloc(size_t nitems, size_t size)
 
```

### stdio.h

```
int puts(const char *str)
printf()
scanf()
sprintf()
sprintf_s()
snprintf()
snprintf_s()
```

### string.h
```
strcpy()
strlen()

strncpy()
strncpy_s()
memset()
```
