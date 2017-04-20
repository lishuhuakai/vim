set incsearch "在你键入搜索的字符串的同时就开始搜索当前已经键入的部分
set nocompatible " 不兼容vi
set magic " 正则表达式的元字符不用加转义
"使得退格键可用
set backspace=indent,eol,start
set autoindent " 使得vim开始一个新行的时候对该行施以上一行的缩进方式
set nu " 设置显示行号
" colorscheme evening
set autowrite " 每当需要时,自动备份
set ruler " 总是在Vim的右下角显示当前光标的行列信息
set showcmd " 在vim窗口的右下角显示一个完整的命令已经完成的部分

" 下面的代码用于设置字符编码
set enc=utf-8
set fencs=utf-8,gbk,big5,cp936,gb18030,gb2312,utf-16
set fenc=utf-8

filetype plugin indent on " 自动识别文件,用文件类型的plugin脚本,使用缩进定义文件
autocmd Filetype text setlocal textwidth=78 " Vim 自动断行,触发点是当前行已经超过了78个字符
set whichwrap=b,s,<,>,[,] " 光标位于行首时按退格键会往回移动到上一行的行尾,同时在行尾按空格键也会移动到下一行的行首,左右箭头也支持相同的操作.


filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'coot/CRDispatcher'
Plugin 'coot/EnchantedVim'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'bling/vim-airline'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名'
" 只是此处的用户名可以省略
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""
"  Vim 插件设定 
""""""""""""""""""""""""""""
imap jj <Esc>
filetype indent on
filetype plugin on

""""""""""""""""""""""""""""
" airline设置
""""""""""""""""""""""""""""
set laststatus=2
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" airline五颜六色的底栏全靠这个设置
set t_Co=256

""""""""""""""""""""""""""""
" nerd commenter设定
""""""""""""""""""""""""""""
" 注释的时候自动加一个空格
let g:NERDSpaceDelims=1
" 让\绑定到,
let mapleader=","
