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
      "mason-org/mason.nvim"
    },
    opts = {
      ensure_installed = { "eslint", "pyright"},
      automatic_installation = true, -- Ensure tools are installed, but without verbose messages
    }
  }
}
