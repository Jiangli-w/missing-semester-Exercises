# lecture-4练习
## ex_1
[交互式正则表达式](https://regexone.com/)网站里有详细的教程、练习以及对应联系的答案

## ex_2 
题中所给的目录下，我并没有对应的words文件，所以要先下载words词表
```
wget https://github.com/dwyl/english-words/archive/refs/heads/master.zip
```
下载完成之后`unzip english-words-master`解压缩

```
cat /usr/share/dict/words | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | wc -l
```
`./a_3times.sh`可运行[a_3times.sh](./ex_2/a_3times.sh) 

得到结果
> 12284

找出其中出现频率前三的末尾两个字母
```
cat $(pwd)/english-words-master/words.txt | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq -c | sort | tail -n3
```
`./MostFreq3Tails.sh`可运行[MostFreq3Tails.sh](./ex_2/MostFreq3Tails.sh)

得到结果
> 1149 ia  
1176 an  
1333 al 

词尾有多少种两字母组合
```
cat ./english-words-master/words.txt | tr "[:upper:]" "[:lower:]" | grep -E "^([^a]*a){3}.*$" | grep -v "'s$" | sed -E "s/.*([a-z]{2})$/\1/" | sort | uniq | wc -l
```
`./2letter_cobi_cout.sh`可运行[2letter_combi_cout.sh](./ex_2/2letter_combi_cout.sh)

得到结果
> 217

## ex_3
正则处理文件之前，文件已经被清空了，所以应该先创建一个备份文件
```
sed -i.bak s/REGEX/SUBSTITUTION/ input.txt > input.txt
```

## ex_4-5
我用的wsl严格意义上并不算真正的系统，只是个应用，所以没有系统日志，查看不了最近的开机时间，故而跳过

