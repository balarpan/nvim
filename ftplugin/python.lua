setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"

vim.treesitter.start()
vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'

