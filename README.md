# missing-semester公开课的课后练习
## 课程地址、
[missing-semester](https://missing.csail.mit.edu/2020/)

## 课后练习
[lecture-1 &nbsp;&nbsp; Course overview + the shell](#lecture-1-course-overview--the-shell)

[lecture-2 &nbsp;&nbsp; Shell Tools and Scripting](#lecture-2-shell-tools-and-scripting)

[lecture-3 &nbsp;&nbsp; Editors(Vim)](#lecture-3-editorsvim)

[lecture-4 &nbsp;&nbsp; Data Wrangling](#lecture-4-data-wrangling)

[lecture-5 &nbsp;&nbsp; Command-line Environment](#lecture-5-command-line-environment)

[lecture-6 &nbsp;&nbsp; Version Control(Git)](#lecture-6-version-controlgit)

[lecture-7 &nbsp;&nbsp; Debugging and Profiling](#lecture-7-debugging-and-profiling)



### lecture-1 Course overview + the shell
#### ex_1 
我用的wsl，这是微软官方的[安装教程](https://learn.microsoft.com/zh-cn/windows/wsl/install)<br>
安装完成之后点击运行，在命令行中输入`echo $SHELL`，得到如下结果
> /bin/bash

#### ex_2
```
$ cd /tmp
$ mkdir missing
```
也可以直接用`./mkdir_missing.sh`运行[mkdir_missing.sh](./lecture-1/ex_2/mkdir_missing.sh)达到同样效果

PS.如果想自己创建文件，运行之前用`chmod +x [filneme]`给.sh文件加上运行权限。下同，不再赘述

#### ex_3
```
$ man touch
```


#### ex_4
```
$ touch /tmp/missing/semester
```


#### ex_5
```
$ echo '#!/bin/sh' > /tmp/missing/semester
$ echo curl --head --silent https://missing.csail.mit.edu >> /tmp/missing/semester
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
$ /tmp/missing/semester | grep last-modified > ~/last-modified.txt
```


#### ex_11
这题答案因人而异，不同的电脑会有不同的结果。

我用的是拯救者Y7000P2019
```
$ cat /sys/class/power_supply/battery/capacity
```

### lecture-2 Shell Tools and Scripting
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
$ find . -type f -name "*.html" | xargs -d '\n' tar -cvzf html.zip
```

`./find_tar.sh`运行[find_tar.sh](./lecture-2/ex_4/find_tar.sh)


### lecture-3 Editors(Vim)
#### ex_1
`vimtutor`

#### ex_2
``` 
$ curl -L https://missing.csail.mit.edu/2020/files/vimrc -o ~/.vimrc
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
```

#### ex_4--ex_6
这几个练习都是为了熟悉vim的使用，以提高效率，可选择性跳过





### lecture-4 Data Wrangling
#### ex_1
[交互式正则表达式](https://regexone.com/)网站有详细的教程，练习以及对应练习的答案

#### ex_2
我用的wsl，在题中所给的目录下没有对应的words文件，所以要先下载words词表
```
$ wget https://github.com/dwyl/english-words/archive/refs/heads/master.zip
```
下载完成之后先解压
```
$ unzip english-words-master
```
`./lecture-4/ex_2/a_3times.sh`可运行[a_3times.sh](./ex_2/a_times.sh)
或者
```
$ cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | wc -l
```
得到结果
> 12248

找出其中出现频率前三的末尾两个字母
```
cat $(pwd)/english-words-master/words.txt | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq -c | sort | tail -n3
```
`./lecture-4/ex_2/MostFreq3Tails.sh`可运行[MostFreq3Tails.sh](./lecture-4/ex_2/MostFreq3Tails.sh)

得到结果
> 1149 ia <br>
> 1176 an <br>
> 1333 al <br>

词尾有多少种两个字母的组合
```
cat ./english-words-master/words.txt | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq | wc -l
```
`./lecture-4/ex_2/2letter_cobi_cout.sh`可运行[2letter_combi_cout.sh](./lecture-4/ex_2/2letter_combi_cout.sh)

得到结果
> 217

#### ex_3
正则处理文件之前，文件已经被清空了，所以应该先创建一个备份文件（一般后缀为`.bak`）
```
sed -i.bak s/REGEX/SUBSTITUTION/ input.txt > input.txt
```

#### ex_4-5
我所使用的是windows下的wsl，严格意义上并不算是真正的系统，只是个应用，所以没有系统日志，查看不了Linux的最近开机时间，故而跳过

### lecture-5 Command-line Environment
#### Job control
##### ex_1
```
sleep 10000
Ctrl-z
bg
```
```
pgrep sleep 10000
```
```
pkill -f sleep
```

##### ex_2
```
sleep 60 & 
pgrep sleep | wait; ls
```
```
pidwait()
{
	while kill -0 $1
	do 
	sleep 1 
	done 
	ls
}
```

#### Aliases
##### ex_1
```
alias dc=cd 
```

##### ex_2
```history | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 10
```
>	14 exit<br>
	15 vim ex.py <br>
	15 vim lab03.py <br>
	16 vim lab02.py <br>
    19 python3 <br>
    22 git push origin master <br>
    23 ll <br>
    39 cd .. <br>
    65 cd <br>
    240 ls




### lecture-6 Version Control(Git)
#### ex_1
[Learn Git Branching](https://learngitbranching.js.org/)

#### ex_2
先将仓库下载下来
```
git clone https://github.com/missing-semester/missing-semester
```

将版本历史可视化并进行搜索
```
git log --all --graph --decorate
```

查看是谁最后修改了`README.md`文件
```
git log READEME.md
```

最后一次修改`_config.yml`文件中`collections:`行时的提交信息
```
git blame _config.yml | grep collecthons
git show a88b4eac
```

#### ex_5
```
cd ~/.gitconfig
```

在文件中添加
```
[alias]
	graph = log --all --graph --decorate --online
```


### lecture-7 Debugging and Profiling
#### **debug**
#### ex_1
由于我用的wsl， 没有系统日志， 故而此练习跳过

#### ex_2
[pdb](https://github.com/spiside/pdb-tutorial)

#### ex_3
可以在vim中通过neomake插件集成shellcheck，只需要在`~/.vimrc`文件中加入如下代码：
```
call plug#begin()
Plug 'neomake/neomake'
call plug#end()
```
然后再在vim中执行`:PlugInstall`安装插件 <br>

用vim打开需要检查的脚本文件
```
vim sp.sh
```

执行`:Neomake`即可进行shellcheck检查，光标移动到对应行可以看到警告和错误信息
