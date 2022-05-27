require "paq" {
    'ackyshake/vimcompletesme';
    'ctrlpvim/ctrlp.vim';
    'dense-analysis/ale';
    'dracula/vim';
    'easymotion/vim-easymotion';
    'godlygeek/tabular';
    'lervag/vimtex';
    'lewis6991/gitsigns.nvim';
    'lukas-reineke/indent-blankline.nvim';
    'luukvbaal/nnn.nvim';
    'RobertAudi/fish.vim';
    'tpope/vim-commentary';
    'tpope/vim-sensible';
    'tpope/vim-surround';
    'vim-airline/vim-airline';
}
require("nnn").setup()
require("gitsigns").setup()

vim.opt.background = "dark"
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "85"
vim.opt.mouse = "a"
vim.opt.shiftwidth = 4
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0

vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.keymap.set('', '<F7>', 'mzgg=G`z')
vim.keymap.set('', 'r', '"_d')

vim.cmd [[
autocmd FileType * se tw=0
colorscheme dracula
command Q q!
filetype plugin indent on
syntax enable
PaqClean
]]
