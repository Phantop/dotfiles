vim.cmd [[
autocmd BufReadPost,FileReadPost *.bz3 call gzip#read('bzip3 -rd')
colorscheme dracula
command Q q!
let b:ale_linters = {'c': [''], 'sh': [''], 'php': ['']}
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:airline#extensions#whitespace#symbol = '!'
]]
