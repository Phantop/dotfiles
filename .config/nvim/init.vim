execute pathogen#infect()

"call plug#begin()
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'koirand/tokyo-metro.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'tpope/vim-surround'
"Plug 'scrooloose/nerdtree'
"Plug 'RobertAudi/fish.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'mhinz/vim-startify'
"Plug 'wincent/terminus'
"Plug 'w0rp/ale'
"Plug 'tpope/vim-commentary'
"Plug 'ajh17/vimcompletesme'
"Plug 'tpope/vim-repeat'
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-sensible'
"Plug 'godlygeek/tabular'
"Plug 'Yggdroot/indentLine'
"call plug#end()

set number
set ruler
set nowrap
set textwidth=0 wrapmargin=0 tw=0
set mouse=a
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set formatoptions+=j
set cursorline
set clipboard=unnamedplus
set autoread
syntax enable

filetype plugin indent on

map <F7> mzgg=G`z

set background=dark
colorscheme dracula

"set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor

autocmd FileType * set tw=0

set ignorecase
set smartcase
