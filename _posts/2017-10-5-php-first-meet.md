---
tags: [php]
---

入门例子：

1. 来自神秘命令行的php简易服务器

```
php -S localhost:8000

PHP ${version} Development Server started at Thu Oct  5 15:58:19 2017
Listening on http://localhost:8000
Document root is /Users/${username}/testdir/php
```
2.php header破除同源限制，实现便捷调试

```
<?php
/*注意顺序哦,header要在echo之前进行调用*/
header('Content-Type:text/html;charset=utf-8');
header('Access-Control-Allow-Origin:*');

echo "<html>";
echo "<h1>this is for test</h1>";
echo "</html>";
?>
```

基本语法(果然天下的语言都是相似的)
php代码写在标签之内

<?php and ?> which tell PHP to start and stop interpreting the code between them

## types
boolean
```
True
False
```

integer

float

string

## variables
$开头后面加上名字

Variables in PHP are represented by a dollar sign followed by the name of the variable. The variable name is case-sensitive.

## control structures
if

```
<?php
if (condition){
}
?>
```

while and do...while

```
<?php
while (condition){
  statement
}
?>
<?php
$i = 0;
do {
    echo $i;
} while ($i > 0);
?>
```

for 
```
<?php
for ($i = 1; $i <= 10; $i++) {
    echo $i;
}
?>
```
