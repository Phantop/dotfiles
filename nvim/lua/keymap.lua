vim.keymap.set('', '<F7>', 'mzgg=G`z')
vim.keymap.set('', 'r', '"_d')
vim.g.mapleader = ' '

vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end)
vim.keymap.set('n', 'gD', function() vim.lsp.buf.type_definition() end)
vim.keymap.set('n', '<leader>d', function() vim.lsp.buf.definition() end)
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.code_action() end)
vim.keymap.set('n', '<leader>h', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.rename() end)

vim.keymap.set('n', '<C-p>', require('fzf-lua').files)
vim.keymap.set('n', '<leader>\\', require('fzf-lua').buffers)
vim.keymap.set('n', '<leader>k', require('fzf-lua').builtin)
vim.keymap.set('n', '<leader>l', require('fzf-lua').live_grep_glob)
vim.keymap.set('n', '<leader>g', require('fzf-lua').grep_project)
