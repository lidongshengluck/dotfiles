" install vim vundle -------------------------------{{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 "vim Plugings included ----------------------------{{{
" 主题颜色
Plugin 'altercation/vim-colors-solarized'

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

Bundle 'Shougo/vimproc'

" 代码补全php补全
Bundle 'm2mdas/phpcomplete-extended'

" 代码补全laravel支持
Bundle 'm2mdas/phpcomplete-extended-laravel'

" Plugin 'vim-scripts/vcscommand.vim'
" Plugin 'mileszs/ack.vim'
" Plugin 'vim-scripts/taglist.vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'Shougo/neocomplcache'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'Shougo/neosnippet'
" Plugin 'vim-scripts/OmniCppComplete'
" Plugin 'tpope/vim-repeat'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'erikfercak/php-search-doc'
" Plugin 'stephpy/vim-php-cs-fixer'
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'suan/vim-instant-markdown'

" vim Plugings included  end ------------}}}

call vundle#end()
" vim Plugins end ---------}}}
