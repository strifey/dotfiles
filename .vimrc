set nocompatible            
let mapleader = ","

filetype off    
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'metalelf0/vimt0d0'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
"Bundle 'vim-scripts/taglist.vim'"
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
filetype plugin indent on 

"setting up Syntastic"
let g:syntastic_cpp_compiler = 'g++-4.7'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -pedantic'
let g:syntastic_mode_map = {'mode' : 'passive'}

set ruler
set number
set sts=4
set ts=4
set sw=4

map Y y$

inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap <leader>l :set number!<CR>
nnoremap <leader>z :let @/ = ""<CR>
nnoremap U u

map tn :tabnext<CR>
map tp :tabprevious<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow                                      
autocmd QuickFixCmdPost    l* nested lwindow

set wildmenu
set wildmode=list:longest
set wildignorecase

set ignorecase
set smartcase

set incsearch
set hlsearch
set wrap

set title

set nobackup
set nowritebackup

set autoindent
