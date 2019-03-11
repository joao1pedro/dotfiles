call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale', { 'do': 'pip install flake8 isort yapf' }
call plug#end()

"disable vi compatibility
set nocompatible

"use indentation of previous line
set autoindent

"use intelligent indentation for C
set smartindent

"configura tabwidth and insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

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

"set colorscheme
colorscheme gruvbox

"set background
set background=dark

"open NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

nmap s <Plug>(easymotion-bd-w)
"let g:deoplete#enable_at_startup = 1
