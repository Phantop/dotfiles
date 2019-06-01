call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/vimcompletesme'
Plug 'christoomey/vim-titlecase'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'easymotion/vim-easymotion'
Plug 'fidian/hexmode'
Plug 'godlygeek/tabular'
Plug 'koirand/tokyo-metro.vim'
Plug 'pedrosans/vim-misc'
Plug 'pedrosans/vim-notes'
Plug 'RobertAudi/fish.vim'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'wincent/terminus'
Plug 'Yggdroot/indentLine'
call plug#end()

se number
se ruler
se nowrap
se textwidth=0 wrapmargin=0 tw=0
se lbr
se mouse=a
se autoindent
se smartindent
se expandtab
se shiftwidth=4
se formatoptions+=j
se cursorline
se clipboard=unnamedplus
se autoread
syntax enable
filetype plugin indent on

map <F7> mzgg=G`z
map r "_d

se background=dark
colorscheme dracula
se termguicolors                    " Enable GUI colors for the terminal to get truecolor

autocmd FileType * se tw=0

se ignorecase
se smartcase

command Q q!
