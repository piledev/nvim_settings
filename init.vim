" -----------------------------------------------
" key bind
" -----------------------------------------------
"  Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>      " init.vim 呼び出し
noremap <Space>s :source $MYVIMRC<CR>      " init.vim 読み込み
noremap <Space>w :<C-u>w<CR>               " ファイル保存
noremap <F3> :<C-u>setlocal relativenumber!<CR>

nnoremap <C-h> <C-w>h                      " vim 画面間の移動
nnoremap <C-j> <C-w>j                      " vim 画面間の移動
nnoremap <C-k> <C-w>k                      " vim 画面間の移動
nnoremap <C-l> <C-w>l                      " vim 画面間の移動
" nnoremap ss :<C-u>sp<CR><C-w>j
" nnoremap sv :<C-u>vs<CR><C-w>l

" Insert Mode
inoremap <silent> jj <ESC>

" Insert Mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up> 
inoremap <C-j> <Down>

let mapleader = "\<Space>"

" -----------------------------------------------
" options
" -----------------------------------------------
" encode setting                                                                                                                                 
set encoding=utf-8

" editor setting
set number                                                      " 行番号表示
set relativenumber                                              " 相対行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完

" cursor setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト

" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=4                                                   " tabは半角4文字
set shiftwidth=4                                                " tabの幅

" search and replacement setting
set ignorecase                                                  " ignore upper/lower case when searching
set incsearch                                                   " show partial matches for a search phrase
set hlsearch                                                    " highlight all matching phrases
set smartcase
set wrapscan
set inccommand=split

" other settings
set autoindent
set clipboard=unnamed
set background=dark
set termguicolors
set pumblend=20
set winblend=20
" ------------------------------------------------------------
" dein.vim set up
" ------------------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = expand('~/.vim/dein')    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
let s:toml_dir = expand('~/.config/nvim')    

" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_dir . '/dein.toml',{'lazy': 0})
  call dein#load_toml(s:toml_dir . '/lazy.toml',{'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable
" ------------------------------------------------------------

