vim.opt_local.autoindent = true
vim.opt_local.tabstop = 4       -- 1 tab is 4 spaces
vim.opt_local.expandtab = true  -- Use spaces for tabs
vim.opt_local.shiftwidth = 4    -- Indent/outdent by 4 spaces
vim.opt_local.softtabstop = 4   -- Backspace over indentation as 4 spaces
-- vim.opt_local.fileformat = 'unix'

vim.treesitter.start()
-- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo[0][0].foldmethod = 'expr'

