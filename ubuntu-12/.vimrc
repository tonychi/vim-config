"不兼容VI键盘模式
set nocompatible

"配色方案
color desert

"允许退格键删除
set backspace=2

"自动缩进
set autoindent
set smartindent
set cindent

"取消自动换行
set nowrap
"整词换行
set linebreak

"设置Tab长度
set tabstop=4
set softtabstop=4
set shiftwidth=4

"我的状态行显示的内容:文件类型,解码
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current 
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in 
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

"总是显示状态栏
set laststatus=2

set scrolloff=3
set ruler

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"启用语法侦测
syntax on

"启用搜索高亮
set hlsearch
set incsearch

"启用行号显示
set number
set numberwidth=5

"保留最后50条命令记录
set history=50

"启用输入命令自动显示
set showcmd
set showmode
set showmatch

"自动补全命令使用菜单挂起列表显示
set wildmenu

set guioptions-=T

set columns=140
set lines=40

"启用侦测文件类型，插件，缩进
filetype on
filetype plugin on
filetype indent on

autocmd FileType *.py set foldmethod=indent foldlevel=99
autocmd FileType *.py setlocal et sta sw=4 sts=4

let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'
let g:pydiction_menu_height=20

"let g:tagbar_autofocus=1
let g:tagbar_width=30

let g:NERDTreeWinSize=30

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

nnoremap <Leader>ee :e ~/.vimrc<CR>
nnoremap <Leader>ss :source ~/.vimrc<CR>

nnoremap <C-S-l> <c-w>l
nnoremap <C-S-h> <c-w>h
nnoremap <C-S-k> <c-w>k
nnoremap <C-S-j> <c-w>j

nnoremap <Leader><F8> <ESC>:TagbarToggle<CR>
nnoremap <Leader><F7> <ESC>:NERDTreeToggle<CR>

nnoremap <c-w>e <ESC>:NERDTreeToggle<CR>:TagbarToggle<CR>

" set Toolbar, Menu visiable 
map <Leader>ff :if &guioptions =~# 'T' <Bar>
    \set guioptions-=T <Bar>
    \set guioptions-=m <bar>
    \else <Bar>
    \set guioptions+=T <Bar>
    \set guioptions+=m <Bar>
    \endif<CR><CR>

