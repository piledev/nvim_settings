" au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
