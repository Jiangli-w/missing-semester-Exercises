# leture-1练习
## ex_1 
我用的wsl，这是微软官方的[安装教程](https://learn.microsoft.com/zh-cn/windows/wsl/install)<br>
安装完成之后点击运行，在命令行中输入`echo $SHELL`，得到如下结果
> /bin/bash

## ex_2
```
$ cd /tmp
$ mkdir missing
```

## ex_3
`$ man touch`

## ex_4
```
$ cd missing
$ touch semester
```

## ex_5
```
$ echo '#!/bin/sh' > semester
$ echo curl --head --silent https://missing.csail.mit.edu >> semester
```
