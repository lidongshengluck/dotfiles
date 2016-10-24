" cscope setting -----------------------------------{{{

if has('cscope')
    set csprg=/usr/local/bin/cscope
    set cst
    set csto=1
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

" 查找该函数被调用的位置
nnoremap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>

" 查找该函数定义
nnoremap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>

" 查找该函数调用了那些函数
nnoremap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" cscope setting end --------}}}

