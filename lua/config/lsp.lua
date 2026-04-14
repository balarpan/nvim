-- LSP settings
vim.diagnostic.config {
  virtual_text = false,
  float = {
    header = false,
    -- border = 'rounded',
    border = 'single',
    focusable = true,
  },
}

-- Lua
vim.lsp.enable("lua_ls");

-- Python
vim.lsp.enable("pyright");
