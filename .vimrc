set nocp

let mapleader = ","
set nocompatible            

filetype off    
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'metalelf0/vimt0d0'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
filetype plugin indent on 

map Y y$

inoremap jj <Esc>
inoremap kk <Esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

set ruler
set number
nnoremap <leader>l :set number!<CR>
nnoremap <leader>c :let @/ = ""<CR>

set sts=4
set ts=4
set sw=4

autocmd QuickFixCmdPost [^l]* nested cwindow                                      
autocmd QuickFixCmdPost    l* nested lwindow

set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase

set incsearch
set hlsearch
set wrap

set title

set nobackup
set nowritebackup

set autoindent
