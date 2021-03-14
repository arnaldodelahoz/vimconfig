set number
"set mouse=a
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
set noshowmode

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
"Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'tpope/vim-projectionist'

" php
Plug 'stanangeloff/php.vim'
Plug 'phpactor/phpactor'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'jwalton512/vim-blade'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'pangloss/vim-javascript'
Plug 'chiel92/vim-autoformat'
Plug 'maksimr/vim-jsbeautify'
Plug 'neoclide/coc.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'

"GIT
Plug 'APZelos/blamer.nvim'

" VimDebug
Plug 'vim-vdebug/vdebug'

"File tree and tab bars
"Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark= "hard"

" let g:airline_theme="transparent"
 let g:airline_theme="google_dark"

let mapleader=" "

let g:python3_host_prog="/usr/bin/python3"
let g:phpactorPhpBin = "/usr/bin/php"


"let NERDTreeQuitOnOpen=1
nmap <Leader>s <Plug>(easymotion-s2)
"nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
noremap <F3> :Autoformat<CR>

" phpactor config
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect


" GoTo code navigation.
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

"CTRLP 
set wildignore+=*/.git/*,/*.idea/*,*/.vscode/*,*/WEB-INF/*,*/libs/*,*/.mvn/*,*/target/*,*/.svn/*,*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/vendor/*     " MacOSX/Linux
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_depth = 70
let g:ctrlp_use_caching=0

let g:blamer_enabled = 1


