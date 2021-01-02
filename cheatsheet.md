# Vim Cheat Sheet

## Vim

| command           | motion                                                                               |
| ----------------- | ------------------------------------------------------------------------------------ |
| <c-w>             | <prefix> of window operation                                                         |
| <c-w>q            | close current window                                                                 |
| ss                | split current window horizontal                                                      |
| sv                | split current window vertical                                                        |
| :s/old/new/g      | substitute 'new' for all 'old's in current line                                      |
| :11,14s/old/new/g | substitute 'new' for all 'old's lines between 11 and 14                              |
| :%s/old/new/g     | substitute 'new' for all 'old's in a file                                            |
| :%s/old/new/gc    | substitute 'new' for all 'old's in a file with a prompt whether to substitute or not |

## Vim plugins

### dein

| command              | motion                  |
| -------------------- | ----------------------- |
| :call dein#install() | install changed plugins |
| :call dein#update()  | update whole plugins    |

### vim-commentary

| command | motion                                |
| ------- | ------------------------------------- |
| gcc     | comment out or uncomment current-line |

### emmet-vim

| command | motion    |
| ------- | --------- |
| <C-y>,  | emmet run |

- ref: [tutorial for emmet.vim](https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL)

### Coc

| command                   | motion             | note                                                                         |
| ------------------------- | ------------------ | ---------------------------------------------------------------------------- |
| gd                        | code jump          | search plugins at [here](https://www.npmjs.com/search?q=keywords%3Acoc.nvim) |
| <c-o>                     | back               |                                                                              |
| :CocInstall [plugin name] | Install Coc-plugin |                                                                              |

### vim-prettier

| command   | motion       |
| --------- | ------------ |
| <leader>p | prettier run |

## tmux

| command | motion   |
| ------- | -------- |
| <C-t>   | <prefix> |
