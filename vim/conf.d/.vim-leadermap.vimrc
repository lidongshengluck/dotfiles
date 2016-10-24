
" 行首尾移动键定义 ---------------------{{{
nnoremap <leader>h ^
nnoremap <leader>l $
vnoremap <leader>h ^
vnoremap <leader>l $
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

" edit模式下，快速保存文件
inoremap <leader>w <esc>:w<cr>a
inoremap <leader>q <esc>:wq<cr>

nnoremap <leader>n :NERDTreeToggle<CR>

" 项目中查询字符串
nnoremap <leader>/ :Ack * -w
