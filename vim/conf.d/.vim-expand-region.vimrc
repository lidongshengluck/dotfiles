" ==============================================================================
" Mappings
" ==============================================================================
if !hasmapto('<Plug>(expand_region_expand)')
  nmap <space> <Plug>(expand_region_expand)
  vmap <space> <Plug>(expand_region_expand)
endif
if !hasmapto('<Plug>(expand_region_shrink)')
  vmap - <Plug>(expand_region_shrink)
  nmap - <Plug>(expand_region_shrink)
endif

" Extend the global default (NOTE: Remove comments in dictionary before sourcing)
call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1,
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })

