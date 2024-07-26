local paq = require 'paq' {
    'dense-analysis/ale',
    'dracula/vim',
    'ibhagwan/fzf-lua',
    'kaarmu/typst.vim',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'neovim/nvim-lspconfig',
    'nmac427/guess-indent.nvim',
    'nvim-lua/plenary.nvim',
    'nvimtools/none-ls.nvim',
    'stevearc/aerial.nvim',

    'vim-airline/vim-airline',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    'gbprod/none-ls-shellcheck.nvim',

    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',

    'williamboman/mason-lspconfig.nvim',
    { 'williamboman/mason.nvim', build = ':MasonUpdate' },
}

require('aerial').setup()
require('gitsigns').setup()
require('ibl').setup()
require('mason').setup()
require('mason-lspconfig').setup()
require('nvim-treesitter.configs').setup({highlight = {enable = true}})
require('guess-indent').setup()

require('lsp')
