-- теперь внутри config.lazy
-- require("config.options")
-- require("config.keymaps")

require("config.lazy")
-- force highlight mode to fix plugins changes
vim.cmd('highlight Visual cterm=reverse gui=reverse')
