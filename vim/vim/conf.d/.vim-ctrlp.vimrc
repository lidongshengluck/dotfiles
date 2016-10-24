" nnoremap <leader>f :CtrlP<CR>
set wildignore+=*/tmp/*
let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_root_markers = ['protected','CVS','tags']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|dll|files|out)$',
			\ 'link': 'some_bad_symbolic_links',
			\ }
