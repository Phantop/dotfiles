vim.cmd [[
autocmd BufReadPost,FileReadPost *.bz3 call gzip#read('bzip3 -rd')
colorscheme dracula
command Q q!
let b:ale_linters = {'c': [''], 'sh': [''], 'php': ['']}
]]
