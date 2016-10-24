" install vim vundle -------------------------------{{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 "vim Plugings included ----------------------------{{{
" 主题颜色
Plugin 'altercation/vim-colors-solarized'
"update

" 改变对象的成对标记 
Plugin 'tpope/vim-surround'

" 快速查找项目文件
Plugin 'kien/ctrlp.vim'

" 项目导航
Plugin 'scrooloose/nerdtree'

" 缓冲区导航插件 
Plugin 'thisivan/vim-bufexplorer'

" 注释插件
Plugin 'scrooloose/nerdcommenter'

" 代码补全
Plugin 'Shougo/neocomplete'

" 代码补全增强
Plugin 'ervandew/supertab'

" 代码段
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" 代码函数列表
Plugin 'majutsushi/tagbar'
" install


" 代码补全php补全
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'm2mdas/phpcomplete-extended'

" 代码补全laravel支持
Bundle 'm2mdas/phpcomplete-extended-laravel'

" 快速移动
Bundle 'easymotion/vim-easymotion'

" 自动对齐操作符
Plugin 'godlygeek/tabular'

" 重复操作插件
Bundle 'tpope/vim-repeat'

" 批量修改文本对象
Bundle 'terryma/vim-multiple-cursors'

" vim会话管理
Bundle 'vim-scripts/sessionman.vim'

" 快速选择文本对象
Bundle 'terryma/vim-expand-region'

" 语法检查
Bundle 'scrooloose/syntastic'

" 书签
Bundle 'kshenoy/vim-signature'

" 项目搜索
"Bundle 'mileszs/ack.vim'

" 自动更新tag
Bundle 'vim-scripts/cscope.vim'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell.vim'

Bundle 'rking/ag.vim'
" Plugin 'vim-scripts/vcscommand.vim'
" Plugin 'mileszs/ack.vim'
" Plugin 'erikfercak/php-search-doc'
" Plugin 'stephpy/vim-php-cs-fixer'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'suan/vim-instant-markdown'

" vim Plugings included  end ------------}}}

call vundle#end()
" vim Plugins end ---------}}}

