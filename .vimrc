set nocp

let mapleader = ","

call pathogen#infect()

map Y y$

inoremap jj <Esc>
inoremap kk <Esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>

set ruler
set number
nnoremap <leader>l :set number!<CR>

set sts=4
set ts=4
set sw=4

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
