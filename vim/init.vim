call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
"Plug 'junegunn/fzf', { 'do': './install --all' } | Plug 'junegunn/fzf.vim'
"Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
"Plug 'ARM9/arm-syntax-vim'
"completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"color themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
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
set relativenumber

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
set t_Co=256

"define background
set background=dark
"set colorscheme
colorscheme dracula
let g:airline_theme='dracula'

"NERDTree key maps
map <C-n> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind<CR>

"tab navigation
map <C-p> :Files<CR>
map <leader>t :tabnew<CR>
map <leader>p :tabprevious<CR>
map <leader>n :tabnext<CR>

"enable easymotion mode
"nmap <space> <Plug>(easymotion-bd-w)

"coc navigiation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"enable syntax highlight asm
"let g:asmsyntax = 'nasm'

"enable syntax highlight arm-asm
"au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

"source coc vim config
source $HOME/.config/nvim/plug-config/coc.vim

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
