require 'paq' {
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

require("mason").setup()
require("mason-lspconfig").setup()
local null_ls = require('null-ls')
null_ls.setup({sources = {
    null_ls.builtins.formatting.phpcbf,
    null_ls.builtins.diagnostics.phpcs
}})
require('null-ls').register(require('none-ls-shellcheck.diagnostics'))
require('null-ls').register(require('none-ls-shellcheck.code_actions'))

-- makes cmp tab functionality work as expected
local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
end

local cmp = require('cmp')
cmp.setup{
    mapping = {
        ['<Tab>'] = cmp.mapping(
        function (fallback)
            if cmp.visible() then cmp.select_next_item()
            elseif has_words_before() then cmp.complete()
            else fallback() end
        end, {'i'}),

        ['<S-Tab>'] = cmp.mapping( cmp.mapping.select_prev_item(), {'i'}),
        ['<Space>'] = cmp.mapping( cmp.mapping.confirm({select=true}), {'i'}),
    },

    completion = { autocomplete = false },
    snippet = { expand = function(args) require('luasnip').lsp_expand(args.body) end },

    sources = cmp.config.sources(
    {{name = 'nvim_lsp_signature_help'}},
    {{name = 'nvim_lsp'}},
    {{name = 'buffer'}},
    {{name = 'path'}}
    )
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').clangd.setup{capabilities=capabilities}
require('mason-lspconfig').setup_handlers{
    function (server_name)
        require('lspconfig')[server_name].setup {capabilities=capabilities}
    end
}
