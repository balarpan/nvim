return {
  { 
    "neovim/nvim-lspconfig" 
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      { "mason-org/mason.nvim", opts ={} }
    },
    opts = {
      ensure_installed = {"docker_language_server", "lua_ls", "eslint", "pyright", "bashls", "yamlls"},
      automatic_installation = true, -- Ensure tools are installed, but without verbose messages
    }
  }
}
