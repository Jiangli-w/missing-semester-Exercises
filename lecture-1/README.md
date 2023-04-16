# lecture-1练习
## ex_1 
我用的wsl，这是微软官方的[安装教程](https://learn.microsoft.com/zh-cn/windows/wsl/install)<br>
安装完成之后点击运行，在命令行中输入`echo $SHELL`，得到如下结果
> /bin/bash

## ex_2
```
cd /tmp
mkdir missing
```
也可以直接用`./mkdir_missing.sh`运行[mkdir_missing.sh](./ex_2/mkdir_missing.sh)达到同样效果

PS.如果想自己创建文件，运行之前用`chmod +x [filneme]`给.sh文件加上运行权限。下同，不再赘述

## ex_3
```man touch```

`./man_touch`可运行[man_touch.sh](./ex_3/man_touch.sh)达到同样效果

## ex_4
```
touch /tmp/missing/semester
```
`./touch_semester`可运行[touch_semester.sh](./ex_4/touch_semester.sh)达到同样效果

## ex_5
```
echo '#!/bin/sh' > /tmp/missing/semester
echo curl --head --silent https://missing.csail.mit.edu >> /tmp/missing/semester
```
`./echo_semester.sh`可运行[echo_semester.sh](./ex_5/echo_semester.sh)达到同样效果

## ex_6
输入`/tmp/missing/semester`会报错
> -bash: ./semester: Permission denied

会出现这种问题是因为semester文件没有执行权限，此时要用`chmod +x /tmp/missing/semester`给semester文件加上执行权限

再次输入`/tmp/missing/semester`即可正常执行，得到运行结果
> HTTP/2 200
> server: GitHub.com
> content-type: text/html; charset=utf-8
> x-origin-cache: HIT
> last-modified: Fri, 28 Oct 2022 00:33:31 GMT
> access-control-allow-origin: *
> etag: "635b235b-1f37"
> expires: Sun, 13 Nov 2022 02:45:05 GMT
> cache-control: max-age=600
> x-proxy-cache: MISS
> x-github-request-id: E330:6E4D:33B13B:3C90FB:637057D9
> accept-ranges: bytes
> date: Sun, 13 Nov 2022 10:54:28 GMT
> via: 1.1 varnish
> age: 0
> x-served-by: cache-hkg17921-HKG
> x-cache: HIT
> x-cache-hits: 1
> x-timer: S1668336868.487677,VS0,VE259
> vary: Accept-Encoding
> x-fastly-request-id: 11eda3a88c590bdf98388281d2f30ce2eb566920
> content-length: 7991

## ex_8
```
man chmod
```
`./man_chmod.sh`可运行[man_chmod.sh](./ex_8/man_chmod.sh)达到同样效果

## ex_10
```
/tmp/missing/semester | grep last-modified > ~/last-modified.txt
```
`./last_m`可运行[last_m.sh](./ex_10/last_m.sh)达到同样效果

## ex_11
这题答案因人而异，不同的电脑会有不同的结果。

我用的是拯救者Y7000P2019
```
cat /sys/class/power_supply/battery/capacity
```
`./bc.sh`运行[bc.sh](./ex_11/bc.sh)可达到同样效果