set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set autoindent


call plug#begin('~/.vim/plugged')

" Themes 
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'tpope/vim-projectionist'  
Plug 'stanangeloff/php.vim'
Plug 'phpactor/phpactor'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'stephpy/vim-php-cs-fixer'



call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark= "hard"

let g:php_cs_fixer_php_path = "php"               " Path to PHP

let mapleader=" "

let NERDTreeQuitOnOpen=1
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>



