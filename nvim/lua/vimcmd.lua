vim.cmd [[
autocmd BufReadPost,FileReadPost *.bz3 call gzip#read('bzip3 -rd')
colorscheme dracula
command Q q!
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
]]
