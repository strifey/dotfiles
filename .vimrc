set nocompatible            
let mapleader = ","

filetype off    
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-sensible'
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
"Plugin 'vim-scripts/taglist.vim'"
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/gtags.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-scripts/a.vim'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on

"setting up Syntastic"
let g:syntastic_mode_map = {'mode' : 'passive'}

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme             = 'hybridline'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

let g:nerdtree_tabs_open_on_console_startup=1

set noswapfile
set showmatch

filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

syntax on
colorscheme ir_black

noremap <leader>f :Autoformat<CR><CR>

set ruler
set number
set sts=4
set ts=4
set sw=4

map Y y$

inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap ;; <Esc>

nnoremap <leader>l :set number!<CR>
nnoremap <leader>z :let @/ = ""<CR>
nnoremap U u

nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
nnoremap th  :tabprev<CR>
nnoremap tj  :tablasb<CR>
nnoremap tk  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow                                      
autocmd QuickFixCmdPost    l* nested lwindow

set wildignore=*.o,*~,*.pyc,*.class,*.bak,*.swp,*.ko

set wildmenu
set wildmode=list:longest
set wildignorecase

set ignorecase
set smartcase
set infercase

set incsearch
set hlsearch
set wrap
set title

set nobackup
set nowritebackup

set autoindent

au BufRead,BufNewFile Dockerfile  setfiletype docker
au BufRead,BufNewFile Jenkinsfile setfiletype groovy

autocmd Filetype docker set expandtab
autocmd FileType python set expandtab
autocmd FileType groovy set expandtab
autocmd FileType conf set expandtab
autocmd FileType conf set sts=2
autocmd FileType conf set ts=2
autocmd FileType conf set sw=2

augroup auto_cpp_h
	autocmd!
	au BufRead,BufNewFile *.cpp exe "vsplit" fnameescape(expand("<amatch>:r").".h")
	au BufRead,BufNewFile *.cpp :set syntax=cpp
augroup END

augroup auto_c_h
	autocmd!
	au BufRead,BufNewFile *.c exe "vsplit" fnameescape(expand("<amatch>:r").".h")
	au BufRead,BufNewFile *.c :set syntax=cpp
augroup END
