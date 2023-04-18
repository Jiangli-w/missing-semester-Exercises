# missing-semester公开课的课后练习
## 课程地址、
[missing-semester](https://missing.csail.mit.edu/2020/)

## 课后练习
[lecture-1](#lecture-1)

[lecture-2](#lecture-2)

[lecture-3](#lecture-3)

[lecture-4](#lecture-4)

[lecture-6](#lecture-6)

[lecture-7](#lecture-7)

### lecture-1
#### ex_1 
我用的wsl，这是微软官方的[安装教程](https://learn.microsoft.com/zh-cn/windows/wsl/install)<br>
安装完成之后点击运行，在命令行中输入`echo $SHELL`，得到如下结果
> /bin/bash

#### ex_2
```
cd /tmp
mkdir missing
```
也可以直接用`./mkdir_missing.sh`运行[mkdir_missing.sh](./lecture-1/ex_2/mkdir_missing.sh)达到同样效果

PS.如果想自己创建文件，运行之前用`chmod +x [filneme]`给.sh文件加上运行权限。下同，不再赘述

#### ex_3
```
man touch
```


#### ex_4
```
touch /tmp/missing/semester
```


#### ex_5
```
echo '#!/bin/sh' > /tmp/missing/semester
echo curl --head --silent https://missing.csail.mit.edu >> /tmp/missing/semester
```


#### ex_6
输入`/tmp/missing/semester`会报错
> -bash: ./semester: Permission denied

会出现这种问题是因为semester文件没有执行权限，此时要用`chmod +x /tmp/missing/semester`给semester文件加上执行权限

再次输入`/tmp/missing/semester`即可正常执行，得到如下运行结果:
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

#### ex_8
```
`man chmod`
```

#### ex_10
```
/tmp/missing/semester | grep last-modified > ~/last-modified.txt
```


#### ex_11
这题答案因人而异，不同的电脑会有不同的结果。

我用的是拯救者Y7000P2019
```
cat /sys/class/power_supply/battery/capacity
```

### lecture-2
#### ex_1
`man ls`查看ls详细信息

`ls -a`查看当前目录下所有文件（包括隐藏文件）

`ls -h`使文件以人类可以理解的格式输出

`ls -t`使文件以最近访问顺序排序

`ls --color=auto`以彩色文本显示输出结果

#### ex_2
[marco.sh](./lecture-2/ex_2/marco.sh)文件
```
marco(){
	echo $(pwd)>/home/jiangli/marco_history.txt
)

polo(){
	cd "$(cat /home/jiangli/marco_history.txt)"
}
```

文件保存之后`source marco.sh`加载函数

然后用`marco`和`polo`来运行以及测试结果

#### ex_3
```
for(i=1;;i++)
do
	./text.sh 2>out.txt
	if [ $? != 0 ]; then
		echo "failed after $i times"
		cat out.txt
		break

	echo "$i times"
	fi
done
```

`./devbug.sh`运行[debug.sh](./lecture-2/ex_3/debug.sh)

#### ex_4
```
find . -type f -name "*.html" | xargs -d '\n' tar -cvzf html.zip
```

`./find_tar.sh`运行[find_tar.sh](./lecture-2/ex_4/find_tar.sh)


### lecture-3
#### ex_1
`vimtutor`

#### ex_2
``` 
curl -L https://missing.csail.mit.edu/2020/files/vimrc -o ~/.vimrc
```

一般下载完成后重启vim就能看到插件安装前后的变化了

#### ex_3
1. `mkdir -p ~/.vim/pack/vendor/start`创建文件夹
2. `cd ~/.vim/pack/vender/start; git clone https://github.com/ctrlpvim/ctrlp.vim`下载插件

3. `set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim`在.vimrc中添加配置

4. 在.vimrc中添加：
```
let g:ctrlp_map ='<c-p<'
let g:ctrlp_cmd ='CtrlP'
let g:ctrlp_working_path_mode = 'ra' #设置默认路径为当前路径

#### ex_4--ex_6
这几个练习都是为了熟悉vim的使用，以提高效率，可选择性跳过





### lecture-4
### lecture-6
#### ex_2
```
git clone https://github.com/missing-semester/missing-semester
```

先将课程仓库下载下来

```
git log --all --graph --decorate
```

将版本历史可视化并进行搜索

```
git log READEME.md
```

查看是谁最后修改了`README.md`文件

```
git blame _config.yml | grep collecthons
git show a88b4eac
```

### lecture-7
#### ex_1
由于我用的wsl， 没有系统日志， 故而此练习跳过

