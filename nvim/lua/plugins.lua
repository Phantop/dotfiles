require 'paq' {
    'dense-analysis/ale',
    'ibhagwan/fzf-lua',
    'ibhagwan/smartyank.nvim',
    'kaarmu/typst.vim',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'nmac427/guess-indent.nvim',
    'stevearc/aerial.nvim',
    'unblevable/quick-scope',
    'vim-airline/vim-airline',

    { 'dracula/vim', as = 'dracula' },
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',

    'nvim-lua/plenary.nvim',
    'nvimtools/none-ls.nvim',
    'gbprod/none-ls-shellcheck.nvim',

    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    { 'williamboman/mason.nvim', build = ':MasonUpdate' },
}

require('aerial').setup()
require('gitsigns').setup()
require('guess-indent').setup()
require('ibl').setup()
require('mason').setup()
require('mason-lspconfig').setup()
require('nvim-treesitter.configs').setup{highlight = {enable = true}}
require('smartyank').setup()

require('lsp')
