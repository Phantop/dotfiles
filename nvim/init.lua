require "paq" {
    'ctrlpvim/ctrlp.vim',
    'dense-analysis/ale',
    'echasnovski/mini.nvim',
    'dracula/vim',
    'lervag/vimtex',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'luukvbaal/nnn.nvim',
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'nvimtools/none-ls.nvim',
    'tpope/vim-sleuth',
    'vim-airline/vim-airline',

    --'tpope/vim-sensible',
    --'williamboman/mason-lspconfig.nvim',
    --{ 'williamboman/mason.nvim', build = ':MasonUpdate' },

    'https://sr.ht/~ackyshake/VimCompletesMe.vim',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
}

require("gitsigns").setup()
require("ibl").setup()
require("lspconfig").clangd.setup{}
--require("mason").setup()
--require("mason-lspconfig").setup()
require("nnn").setup()
require("nvim-treesitter.configs").setup{ highlight = { enable = true } }

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
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>h', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end)

vim.cmd [[
PaqSync
colorscheme dracula
command Q q!
let b:ale_linters = {'c': ['']}
autocmd BufReadPost,FileReadPost *.bz3 call gzip#read("bzip3 -d")
]]
