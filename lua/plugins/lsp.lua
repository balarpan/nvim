return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   lazy = false,
  -- },
  -- {
  --   "mason-org/mason.nvim",
  --   opts = {}
  -- },
  {
    "mason-org/mason-lspconfig.nvim",
    -- lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
      { "mason-org/mason.nvim", opts ={} }
    },
    opts = {
      ensure_installed = {"docker_language_server", "lua_ls", "ts_ls", "pyright", "bashls", "yamlls"},
      automatic_installation = true,  -- Ensure tools are installed, but without verbose messages
    }
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "antosha417/nvim-lsp-file-operations", config = true },
      { "folke/lazydev.nvim", opts = {} },
    },
    config = function()
      -- import cmp-nvim-lsp plugin
      local cmp_nvim_lsp = require("cmp_nvim_lsp")

      -- used to enable autocompletion (assign to every lsp server config)
      local capabilities = cmp_nvim_lsp.default_capabilities()

      vim.lsp.config("*", {
        capabilities = capabilities,
      })
    end,
  },
  {
    -- For properly handle vim.bla-bla-bla
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}

