-- LSP settings
local severity = vim.diagnostic.severity
vim.diagnostic.config {
  virtual_text = false,            -- Turn off inline text at the end of the line
  update_in_insert = false,       -- Only update diagnostics after leaving Insert mode
  underline = true,               -- Keep the red underlines
  severity_sort = true,           -- Show errors before warnings
  float = {
    header = false,
    -- border = 'rounded',
    border = 'single',
    focusable = true,
  },
  -- signs = {
  --   text = {
  --     [severity.ERROR] = "❌ ",
  --     [severity.WARN] = "⚠ ",
  --     [severity.HINT] = "H ",
  --     [severity.INFO] = "🛈 ",
  --   },
  -- },
}
vim.lsp.codelens.enable(true);
-- vim.lsp.inlay_hint.enable(true);
-- vim.api.nvim_create_autocmd('LspAttach', {
--   group = vim.api.nvim_create_augroup('my.lsp', {}),
--   callback = function(ev)
--     local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
--     -- if client:supports_method('textDocument/implementation') then
--     --   -- Create a keymap for vim.lsp.buf.implementation ...
--     -- end
--     -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
--     -- if client:supports_method('textDocument/completion') then
--     --   -- Optional: trigger autocompletion on EVERY keypress. May be slow!
--     --   -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
--     --   -- client.server_capabilities.completionProvider.triggerCharacters = chars
--     --   vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
--     -- end
--     -- Auto-format ("lint") on save.
--     -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
--     -- if not client:supports_method('textDocument/willSaveWaitUntil')
--     --     and client:supports_method('textDocument/formatting') then
--     --   vim.api.nvim_create_autocmd('BufWritePre', {
--     --     group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
--     --     buffer = ev.buf,
--     --     callback = function()
--     --       vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
--     --     end,
--     --   })
--     -- end
--   end,
-- })

-- LSP logging and debug
-- vim.lsp.log.set_level 'trace'
-- vim.lsp.log.set_format_func(vim.inspect)


-- Lua
vim.lsp.enable("lua_ls");

-- Python
vim.lsp.enable("pyright");

-- Docker and docker-compose
vim.lsp.enable("docker_language_server")
-- Note that docker-language-server is already catch yaml filetype and no need to enable yamlls
-- vim.lsp.enable("yamlls")

-- Javascript, Typescript, etc.
vim.lsp.enable("eslint")
