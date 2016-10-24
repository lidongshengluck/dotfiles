nnoremap <leader>g :set <SID>operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
    let save_unnamed_register = @@

    if a:type ==# 'v'
        execute "normal! `<v`>y"
    elseif a:type ==# 'char'
        execute "normal! `[v`]y"
    else
        return
    endif

    echom shellescape(@@)
    "silent execute "grep! -R " . shellescape(@@) . " ."
    ":redraw!
    ":copen

    "let @@ = save_unnamed_register
endfunction
