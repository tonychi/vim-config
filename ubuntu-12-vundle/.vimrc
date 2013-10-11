"不兼容VI键盘模式
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"文件搜索
Bundle 'kien/ctrlp.vim'
"美化状态栏样式
Bundle 'Lokaltog/vim-powerline'
"调试功能
Bundle 'tonychi/vim-debug'

" vim-scripts repos
"文件夹管理
Bundle 'The-NERD-tree'
"Tag lsit, use ctags
Bundle 'taglist.vim'
Bundle 'snipMate'
Bundle 'ZenCoding.vim'
"格式化js代码
Bundle '_jsbeautify'
"管理Undo列表
Bundle 'Gundo'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"配色方案
color desert

" 默认窗体宽度和高度
set columns=130
set lines=40

" 去除工具栏显示
set guioptions-=T
"set guioptions-=m

"使用鼠标
set mouse=a

"自动补全命令使用菜单挂起列表显示
set wildmenu

"总是显示状态栏
set laststatus=2

set cursorline
hi cursorline guibg=#000000

"启用搜索高亮
set hlsearch
set incsearch

set ruler

set linespace=0

"启用行号显示
set number
set numberwidth=5

set scrolloff=3

"启用输入命令自动显示
set showcmd
set showmode
set showmatch

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"允许退格键删除
set backspace=2

"取消自动换行
set nowrap
"整词换行
set linebreak

"自动缩进
set autoindent
set smartindent
set cindent

"设置Tab长度
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab

"保留最后50条命令记录
set history=50

set clipboard=unnamedplus

"启用语法侦测
syntax on

autocmd FileType python set foldmethod=indent foldlevel=99
"autocmd FileType *.py setlocal et sta sw=4 sts=4

" Key mapping
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

nnoremap <c-w>e :e ~/.vimrc<CR>
nnoremap <c-w>s :source ~/.vimrc<CR>
nnoremap <c-w>n :NERDTreeToggle<CR>:TlistToggle<CR>
nnoremap <c-w>u :GundoToggle<CR>

nnoremap <c-s-l> <c-w>l
nnoremap <c-s-h> <c-w>h
nnoremap <c-s-k> <c-w>k
nnoremap <c-s-j> <c-w>j

nnoremap <C-F5> :Dbg .<CR>
nnoremap <F5> :Dbg run<CR>
nnoremap <F6> :Dbg quit<CR>
nnoremap <F9> :Dbg break<CR>
nnoremap <F10> :Dbg over<CR>
nnoremap <F11> :Dbg into<CR>
nnoremap <C-F11> :Dbg out<CR>


" Plugin Config
let g:ctrlp_working_path_mode = 'ra'

let g:NERDTreeWinSize=30

let g:Tlist_Use_Right_Window = 1

