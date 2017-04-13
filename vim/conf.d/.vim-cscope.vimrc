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

"" s: Find this C symbol
nnoremap  <leader>fs :cs f c ('<cword>')<CR>:cw<CR>
"" g: Find this definition
nnoremap  <leader>fg :cs f g <cword><CR>:cw<CR>
"" d: Find functions called by this function
nnoremap  <leader>fd :cs f d <cword><CR>:cw<CR>
"" c: Find functions calling this function
nnoremap  <leader>fc :cs f c <cword><CR>:cw<CR>
"" t: Find this text string
nnoremap  <leader>ft :cs f t <cword><CR>:cw<CR>
"" e: Find this egrep pattern
nnoremap  <leader>fe :cs e e <cword><CR>:cw<CR>
"" f: Find this file
nnoremap  <leader>ff :cs f f <cword><CR>:cw<CR>
"" i: Find files #including this file

function! g:CscopeDone()
	exec "cs add ".fnameescape(g:asyncrun_text)
endfunc

function! g:CscopeUpdate(workdir, cscopeout)
	let l:cscopeout = fnamemodify(a:cscopeout, ":p")
	let l:cscopeout = fnameescape(l:cscopeout)
	let l:workdir = (a:workdir == '')? '.' : a:workdir
	try | exec "cs kill ".l:cscopeout | catch | endtry
	exec "AsyncRun -post=call\\ g:CscopeDone() ".
				\ "-text=".l:cscopeout." "
				\ "-cwd=".fnameescape(l:workdir)." ".
				\ "cscope -b -R -f ".l:cscopeout
endfunc

noremap <c-r> :call g:CscopeUpdate(".", "cscope.out")<cr>


