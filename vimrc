set nocompatible               " be iMproved
filetype on
filetype off                   " required!
set encoding=utf-8
set number
syntax on
set hlsearch
set incsearch
set smartcase
set shiftwidth=4
set autoindent
set copyindent
set backspace=indent,eol,start

set undolevels=1000
set visualbell
set noerrorbells

set nobackup
set noswapfile

filetype plugin indent on
set pastetoggle=<F2>
nnoremap ; :

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 " Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'bling/vim-airline'
 Bundle 'git://git.wincent.com/command-t.git'
 Bundle 'scrooloose/nerdtree'

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 "

set guifont=Source\ Code\ Pro\ for\ Powerline
let g:airline_powerline_fonts=1
set laststatus=2

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
