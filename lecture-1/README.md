# leture-1练习
## ex_1 
我用的wsl，这是微软官方的[安装教程](https://learn.microsoft.com/zh-cn/windows/wsl/install)<br>
安装完成之后点击运行，在命令行中输入`echo $SHELL`，得到如下结果
> /bin/bash

## ex_2
```
cd /tmp
mkdir missing
```
也可以直接用`./mkdir_missing.sh`运行[mkdir_missing.sh](./ex_2/mkdir_missing.sh)

PS.如果想自己创建文件，运行之前用`chmod +x [filneme]`给.sh文件加上运行权限。下同，不再赘述

## ex_3
```man touch```

`./man_touch`可运行[man_touch.sh](./ex_3/man_touch.sh)

## ex_4
```
touch /tmp/missing/semester
```
`./touch_semester`可运行[touch_semester.sh](./ex_4/touch_semester.sh)

## ex_5
```
echo '#!/bin/sh' > /tmp/missing/semester
$ echo curl --head --silent https://missing.csail.mit.edu >> /tmp/missing/semester
```
`./echo_semester.sh`可运行[echo_semester.sh](./ex_5/echo_semester.sh)