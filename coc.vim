" Extensions
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-yaml',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-go',
  \ 'coc-jedi',
  \ ]

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
vmap <leader>p <Plug>(coc-format-selected)
nmap <leader>p <Plug>(coc-format-selected)
