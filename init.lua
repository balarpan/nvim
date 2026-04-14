require("config.options")
require("config.keymaps")

require("config.lazy")
require("config.lsp")

-- Filetype Detection Order: If you open Neovim with a file argument (e.g., nvim main.py),
-- Neovim loads the file buffer before your init.lua finishes setting up the LSP autocommands.
-- Fix: manually trigger the filetype detection at the end of your config
vim.cmd('filetype detect')

-- force highlight mode to fix plugins changes
-- vim.cmd('highlight Visual cterm=reverse gui=reverse')
