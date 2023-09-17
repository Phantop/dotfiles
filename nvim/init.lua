require "paq" {
    'ctrlpvim/ctrlp.vim';
    'dense-analysis/ale';
    'dracula/vim';
    'godlygeek/tabular';
    'lervag/vimtex';
    'lewis6991/gitsigns.nvim';
    'lukas-reineke/indent-blankline.nvim';
    'luukvbaal/nnn.nvim';
    'RobertAudi/fish.vim';
    'tpope/vim-commentary';
    'tpope/vim-sensible';
    'tpope/vim-sleuth';
    'vim-airline/vim-airline';

    'https://git.sr.ht/~ackyshake/VimCompletesMe.vim';
    { 'nvim-treesitter/nvim-treesitter', run = function() vim.cmd 'TSUpdate' end };

}
require("nnn").setup()
require("gitsigns").setup()
require'nvim-treesitter.configs'.setup {
    highlight = { enable = true, additional_vim_regex_highlighting = false }
}

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
colorscheme dracula
command Q q!
PaqSync

autocmd BufReadPost,FileReadPost *.bz3 call gzip#read("bzip3 -d")
]]
