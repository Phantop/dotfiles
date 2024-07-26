vim.filetype.add({
  extension = {
    qb = 'python',
    tac = 'tac',
    tin = 'cpp',
    itin = 'cpp',
  }
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tac',
  callback = function(args)
    vim.lsp.start({
      cmd = {'/usr/bin/artaclsp'},
      cmd_args = {'-I', '/bld/'},
      name = 'tacc',
      root_dir = '/src',
    })
    vim.treesitter.language.add('tac', { path = '/usr/lib64/libtree-sitter-tac.so' })
    vim.treesitter.start()
  end,
})
