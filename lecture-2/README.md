# lecture-2 练习
## ex_1
`man ls`查看ls详细信息

`ls -a`所有文件（包括隐藏文件）

`ls -h` 文件以人类可以理解的格式输出

`ls -t`文件以最近访问顺序排序
`ls --color=auto`以彩色文本显示输出结果

## ex_2
[marco.sh](./ex_2/marco.sh)文件
```
marco(){
    echo $(pwd)>/home/jiangli/marco_history.txt
}

polo(){
    cd "$(cat /home/jiangli/marco_history.txt)"
```
文件保存之后`source marco.sh`加载函数

然后用`marco`和`polo`来测试效果

## ex_3
```
for((i=1;;i++))
do
    ./test.sh 2>out.txt
    if [ $? != 0 ]; then
        echo "failed after $i times"
        cat out.txt
        break

    echo "$i times"
    fi
done
```
`./debug.sh`运行[debug.sh](./ex_3/debug.sh)

## ex_4
```
find . -type f -name "*.html" | xargs -d '\n'  tar -cvzf html.zip
```
`./find_tar.sh`运行[find_tar.sh](./ex_4/find_tar.sh)

