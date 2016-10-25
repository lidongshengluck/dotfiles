" 基础设置
set nocompatible
set history=100
set nu
set ar
set autoindent
set incsearch
set backspace=indent,eol,start
"set ruler
"set cursorline

" 文件编码设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-BOM,utf-8,gbk,cp936,latin-1

" 文件格式设置
set fileformat=unix
set fileformats=unix,dos,mac

" 命令栏设置
set wildchar=<TAB>
set wildmenu
set ignorecase

" 缩进设置
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set softtabstop=4

" 忽略打开的扩展名文件
set wildignore+=.svn,CVS,.git
set wildignore+=*.o,*.a,*.class,*.mo,*.la,*.so,*.lo,*.la,*.obj,*.pyc
set wildignore+=*.exe,*.zip,*.jpg,*.png,*.gif,*.jpeg

" 关闭后的环境设置
"set viminfo='10,\"100,:20,%,n~/.viminfo

" 文件插件设置
filetype on
filetype plugin on
filetype plugin indent on
set smartindent

" 打开语法高亮
syntax on

" 在插入模式下<esc>键失效
inoremap <esc> <nop>
inoremap jk <esc>

" 折叠设置
set foldenable
set foldmethod=indent
set foldlevel=1

" 全局map设置
nmap - <C-W>-
nmap + <C-W>+
nmap > <C-W>>
nmap < <C-W><

" mapleader 设置
let mapleader = ","
let maplocalleader = ","

" 状态栏设置
source ~/.vim/conf.d/.vim-status.vimrc

" 插件设置
source ~/.vim/conf.d/.vim-vundle.vimrc
source ~/.vim/conf.d/.vim-tabularize.vimrc
"source ~/.vim/conf.d/.vim-solarized.vimrc
source ~/.vim/conf.d/.vim-neosnippet.vimrc
source ~/.vim/conf.d/.vim-tagbar.vimrc
source ~/.vim/conf.d/.vim-ctrlp.vimrc
source ~/.vim/conf.d/.vim-expand-region.vimrc
source ~/.vim/conf.d/.vim-syntastic.vimrc
source ~/.vim/conf.d/.vim-easymotion.vimrc
source ~/.vim/conf.d/.vim-neocomplete.vimrc
source ~/.vim/conf.d/.vim-leadermap.vimrc
source ~/.vim/conf.d/.vim-cscope.vimrc
source ~/.vim/conf.d/.vim-mutliple-cursors.vimrc
source ~/.vim/conf.d/.vim-shell.vimrc
source ~/.vim/conf.d/.vim-ag.vimrc

let g:phpcomplete_index_composer_command="composer"

" source ~/.vim/conf.d/.vim-ack.vimrc
" source ~/.vim/conf.d/.vim-taglist.vimrc
" source ~/.vim/conf.d/.vim-vcscommand.vimrc

