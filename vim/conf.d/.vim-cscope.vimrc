"
if has("cscope")
    set cscopequickfix=s+,c+,d+,i+,t+,e+,g+
	set csto=0
	set cst
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

if !exists('g:cwn')
    let g:cwn = 0
endif

function! SetCwIdx()
    if g:cwn > 0 
        :ccl
        let g:cwn = 0
    else
        :cw
        let g:cwn = winnr()
    endif
endfunction

"" s: Find this C symbol
nnoremap  <leader>fs :cs f c ('<cword>')<CR>:call SetCwIdx()<CR>
"" g: Find this definition
nnoremap  <leader>fg :cs f g <cword><CR>:call SetCwIdx()<CR>
"" d: Find functions called by this function
nnoremap  <leader>fd :cs f d <cword><CR>:call SetCwIdx()<CR>
"" c: Find functions calling this function
nnoremap  <leader>fc :cs f c <cword><CR>:call SetCwIdx()<CR>
"" t: Find this text string
nnoremap  <leader>ft :cs f t <cword><CR>:call SetCwIdx()<CR>
"" e: Find this egrep pattern
nnoremap  <leader>fe :cs e e <cword><CR>:call SetCwIdx()<CR>
"" f: Find this file
nnoremap  <leader>ff :cs f f <cword><CR>:call SetCwIdx()<CR>
"" i: Find files #including this file

nnoremap <leader>l :call SetCwIdx()<CR>
