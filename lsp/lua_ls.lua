return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.git' },
  -- single_file_support = true,
  -- log_level = vim.lsp.protocol.MessageType.Warning,
  settings = {
    lua = {
      codeLens = { enable = true },
      hint = { enable = true, semicolon = 'Disable' },
    }
  }
}
