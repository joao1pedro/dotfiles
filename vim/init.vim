call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
"Plug 'kien/ctrlp.vim'
"Plug 'ARM9/arm-syntax-vim'
"completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
set t_Co=256

"define background
set background=dark
"set colorscheme
colorscheme gruvbox

"enable syntax highlight asm
"let g:asmsyntax = 'nasm'

"enable syntax highlight arm-asm
"au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

"open NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>
map <C-F> :NERDTreeFind<CR>
nmap <silent> k :call CocAction('doHover')<CR>
"enable easymotion mode
nmap <space> <Plug>(easymotion-bd-w)
map <C-p> :Files<CR>
map <leader>t :tabnew<CR>
map <leader>p :tabprevious<CR>
map <leader>n :tabnext<CR>  
"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
