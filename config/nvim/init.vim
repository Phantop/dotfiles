call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/vimcompletesme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'dracula/vim'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'RobertAudi/fish.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
call plug#end()

se background=dark
se clipboard=unnamedplus
se colorcolumn=85
se cursorline
se expandtab
se formatoptions+=j
se ignorecase
se lbr
se mouse=a
se nowrap
se number
se shiftwidth=4
se smartcase
se smartindent
se termguicolors
se textwidth=0
se wrapmargin=0

autocmd FileType * se tw=0
colorscheme dracula
command Q q!
filetype plugin indent on
syntax enable
map <F7> mzgg=G`z
map r "_d
