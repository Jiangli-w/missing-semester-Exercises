# lecture-3 练习
## ex_1
`vimtutor`

## ex_2
```
curl -L https://missing.csail.mit.edu/2020/files/vimrc -o ~/.vimrc
```
下载完成之后再打开vim就可以看到变化啦

## ex_3
1. `mkdir -p ~/.vim/pack/vendor/start`创建文件夹

2. `cd ~/.vim/pack/vendor/start; git clone https://github.com/ctrlpvim/ctrlp.vim`下载插件

3. `set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim`在.vimrc中添加配置

4. 在.vimrc中添加·
```
let g:ctrlp_map ='<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' #设置默认路径为当前路径
```

## ex_4--ex_6
这几个练习都是为了熟悉vim的使用，以提高效率，在此不做详解