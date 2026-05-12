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
}

require('aerial').setup()
require('gitsigns').setup()
require('guess-indent').setup()
require('ibl').setup()
require('nvim-treesitter.configs').setup{highlight = {enable = true}}
require('smartyank').setup()
