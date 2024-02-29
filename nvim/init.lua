require "paq" {
    'ctrlpvim/ctrlp.vim',
    'dense-analysis/ale',
    'echasnovski/mini.nvim',
    'dracula/vim',
    'kaarmu/typst.vim',
    'lervag/vimtex',
    'lewis6991/gitsigns.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'luukvbaal/nnn.nvim',
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'nvimtools/none-ls.nvim',
    'stevearc/aerial.nvim',
    'tpope/vim-sleuth',
    'vim-airline/vim-airline',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    'gbprod/none-ls-shellcheck.nvim',

    "L3MON4D3/LuaSnip";
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-cmdline";
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-nvim-lsp-signature-help";
    "hrsh7th/cmp-path";
    "hrsh7th/nvim-cmp";

    --'tpope/vim-sensible',
    --'https://sr.ht/~ackyshake/VimCompletesMe.vim',
    'williamboman/mason-lspconfig.nvim',
    { 'williamboman/mason.nvim', build = ':MasonUpdate' },
}

vim.cmd("PaqSync")
require("aerial").setup()
require("gitsigns").setup()
require("ibl").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require("nnn").setup()
require("nvim-treesitter.configs").setup({highlight = {enable = true}})

local null_ls = require("null-ls")
null_ls.setup({sources = {
    null_ls.builtins.formatting.phpcbf,
    null_ls.builtins.diagnostics.phpcs
}})
require("null-ls").register(require("none-ls-shellcheck.diagnostics"))
require("null-ls").register(require("none-ls-shellcheck.code_actions"))

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require("cmp")
cmp.setup({
    mapping = {
        ["<Tab>"] = cmp.mapping(
        function (fallback)
            if cmp.visible() then cmp.select_next_item()
            elseif has_words_before() then cmp.complete()
            else fallback() end
        end, {"i"}),

        ["<S-Tab>"] = cmp.mapping( cmp.mapping.select_prev_item(), {"i"}),
        ["<Space>"] = cmp.mapping( cmp.mapping.confirm({select=true}), {"i"}),
    },

    completion = { autocomplete = false },
    snippet = { expand = function(args) require("luasnip").lsp_expand(args.body) end },

    sources = cmp.config.sources(
    {{name = "nvim_lsp_signature_help"}},
    {{name = "nvim_lsp"}},
    {{name = "buffer"}},
    {{name = "path"}}
    )
})
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").clangd.setup{capabilities=capabilities}
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {capabilities=capabilities}
    end
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
vim.g.mapleader = " "

vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
vim.keymap.set('n', '<leader>a', "<cmd>AerialToggle!<CR>")
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>h', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end)

vim.cmd [[
colorscheme dracula
command Q q!
let b:ale_linters = {'c': [''], 'sh': [''], 'php': ['']}
autocmd BufReadPost,FileReadPost *.bz3 call gzip#read("bzip3 -d")
]]
