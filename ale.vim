let g:ale_sign_column_always = 1
let g:ale_fixers = {
\ 'php': ['phpcbf'],
\}
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
  \'javascript': ['eslint', 'prettier', 'tsserver'],
  \'typescript': ['eslint', 'prettier', 'tsserver', 'tslint'],
  \'JSON': ['prettier'],
  \'HTML': ['prettier'],
  \'CSS': ['prettier'],
  \'YAML': ['prettier'],
  \'vim': ['vimls'],
  \'go': ['gopls', 'go build'],
  \'Dockerfile': ['dockerfile_lint', 'hadolint'],
  \'scss': ['stylelint']
\}
let g:ale_dockerfile_hadolint_use_docker = 'enable'
let g:ale_scss_stylelint_use_global = 1
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
nmap <silent> <C-w>k <Plug>(ale_previous_wrap)
nmap <silent> <C-w>j <Plug>(ale_next_wrap)
