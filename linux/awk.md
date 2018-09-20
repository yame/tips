- grep 更适合单纯的查找或匹配文本
- sed 更适合编辑匹配到的文本
- awk 更适合格式化文本，对文本进行较复杂格式处理

# 关于awk内建变量个人见解，简单易懂

解释一下变量：

变量：分为内置变量和自定义变量;输入分隔符FS和输出分隔符OFS都属于内置变量。

内置变量就是awk预定义好的、内置在awk内部的变量，而自定义变量就是用户定义的变量。

- FS(Field Separator)：输入字段分隔符， 默认为空白字符
- OFS(Out of Field Separator)：输出字段分隔符， 默认为空白字符
- RS(Record Separator)：输入记录分隔符(输入换行符)， 指定输入时的换行符
- ORS(Output Record Separate)：输出记录分隔符（输出换行符），输出时用指定符号代替换行符
- NF(Number for Field)：当前行的字段的个数(即当前行被分割成了几列)
- NR(Number of Record)：行号，当前处理的文本行的行号。
- FNR：各文件分别计数的行号
- ARGC：命令行参数的个数
- ARGV：数组，保存的是命令行所给定的各参数

# 自定义变量的方法

 方法一：-v varname=value ，变量名区分字符大小写。
 方法二：在program中直接定义。
 
# 内建变量
- $n	当前记录的第n个字段，字段间由FS分隔
- $0	完整的输入记录
- ARGC	命令行参数的数目
- ARGIND	命令行中当前文件的位置(从0开始算)
- ARGV	包含命令行参数的数组
- CONVFMT	数字转换格式(默认值为%.6g)ENVIRON环境变量关联数组
- ERRNO	最后一个系统错误的描述
- FIELDWIDTHS	字段宽度列表(用空格键分隔)
- FILENAME	当前文件名
- FNR	各文件分别计数的行号
- FS	字段分隔符(默认是任何空格)
- IGNORECASE	如果为真，则进行忽略大小写的匹配
- NF	一条记录的字段的数目
- NR	已经读出的记录数，就是行号，从1开始
- OFMT	数字的输出格式(默认值是%.6g)
- OFS	输出记录分隔符（输出换行符），输出时用指定的符号代替换行符
- ORS	输出记录分隔符(默认值是一个换行符)
- RLENGTH	由match函数所匹配的字符串的长度
- RS	记录分隔符(默认是一个换行符)
- RSTART	由match函数所匹配的字符串的第一个位置
- SUBSEP	数组下标分隔符(默认值是/034)
 
# 示例

## 打印九九乘法表
```
$ seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'
```

## 从文件中找出长度大于80的行
```
$ awk 'length>80' log.txt
```

## 计算文件大小
```
$ ls -l *.txt | awk '{sum+=$6} END {print sum}'
```

## 打印用户信息
```
awk 'BEGIN {FS=":"}{ system("id " $1) } END {print nlines}' passwd
```