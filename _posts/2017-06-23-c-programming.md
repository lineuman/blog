真的是太喜欢c的速度了

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
