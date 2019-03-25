call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'w0rp/ale', { 'do': 'pip install flake8 isort yapf' }
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
"snippets
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
"color themes
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on

"disable vi compatibility
set nocompatible

"enable utf-8
set encoding=utf-8

"use indentation of previous line
set autoindent

"use intelligent indentation for C
set smartindent

"setup tabwidth and insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

"enable backspace indent
set backspace=indent,eol,start

"turn line numbers on
set number

"turn syntax highlighting on
syntax on

"highlight matching braces
set showmatch

"enhaced tab completion on commands
set wildmenu
set wildmode=longest:list,full

"buffer can be in the background if it's modified
set hidden

"search
set hlsearch    "highlight matches
set incsearch   "incremental searching
set ignorecase  "ignore case sensitive
set smartcase   " unless they contain at least one capital letter

"enable termguicolors
set termguicolors
"define background
set background=dark
"set colorscheme
colorscheme solarized8

"set airline theme
let g:airline_theme='solarized'

"open NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"enable easymotion mode
nmap <space> <Plug>(easymotion-bd-w)

"set path .ycm_extra_conf
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

"ycm setup
let g:ycm_show_diagnostics_ui = 0
let g:ycm_complete_in_comments = 1 
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_collect_identifiers_from_comments_and_strings = 1 

"utilsnippets cfg
let g:UltiSnipsSnippetsDir= $HOME.'/.vim/UltiSnips/'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-s-k>"

"enable syntax highlight asm
let g:asmsyntax = 'nasm'
