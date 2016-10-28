" 行首尾移动键定义 ---------------------{{{
nnoremap <leader>h ^
nnoremap <leader>g g_
vnoremap <leader>h ^
vnoremap <leader>g g_
" end -----------}}}

" 多窗口编辑模式下，窗口快速跳转 -------------------{{{
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
" end -----------}}}

" 插入模式下，进入normal模式
inoremap jk <esc>
vnoremap jk <esc>

" nomral模式下，切换单词为大写
nnoremap <leader>u viwU
" edit模式下，转换单词为大写
inoremap <leader>u <esc>hviwUwi

" 快速关闭窗口, 和之前的录制宏调换
nnoremap q :q<cr>
nnoremap <leader>q q

" 打开配置文件
nnoremap <leader>ev :split ~/.vimrc<CR>

" 打开帮助文件
nnoremap <leader>eh :split ~/.vim/mydoc/index/doc/README.md<CR>

" 代码导航
nnoremap <leader>n :NERDTreeToggle<CR>
