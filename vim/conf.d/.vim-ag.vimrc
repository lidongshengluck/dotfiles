nnoremap <leader>g :set <SID>operatorfunc=GrepOperator<cr>
vnoremap <leader>g :<c-u>call <SID>GrepOperator()<cr>

function! s:GrepOperator(type)
    let save_unnamed_register = @@
    execute "normal! `<v`>y"
    execute "normal! Ag " . @@
endfunction
