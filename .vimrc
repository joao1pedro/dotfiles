call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'w0rp/ale', { 'do': 'pip install fake8 isort yapf' }
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ARM9/arm-syntax-vim'
"completion
"snippets
Plug 'honza/vim-snippets'
"color themes
Plug 'morhetz/gruvbox'
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

"enable color scheme tmux
"set t_Co=256

"define background
set background=dark
"set colorscheme
colorscheme gruvbox

"open NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

"enable easymotion mode
nmap <space> <Plug>(easymotion-bd-w)

"enable syntax highlight asm
let g:asmsyntax = 'nasm'

"enable syntax highlight arm-asm
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
