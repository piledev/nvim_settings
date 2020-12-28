  let g:deoplete#enable_at_startup = 1

  call deoplete#custom#option({
    \ 'auto_complete_delay': 0,
    \ 'auto_complete_start_length': 1,
    \ 'ignore_case': v:false,
    \ 'refresh_always': v:false,
    \ 'smart_case': v:true,
    \ 'max_list': 10000,
    \ })

  inoremap <expr><tab> pumvisible() ? "\<C-n>" :
        \ neosnippet#expandable_or_jumpable() ?
        \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

