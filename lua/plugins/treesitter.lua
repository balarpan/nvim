return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts_extend = { "ensure_installed" },
  opts = {
    indent = { enable = true },
    highlight = { enable = true },
    matchup = { enable = true },
    folds = { enable = true },
    ensure_installed = {
     "css",
     "html",
     "python",
     "lua",
     "json",
     "jsonc",
     "markdown",
     "markdown_inline",
     "regex",
     "vim",
     "xml"
   }
  }
}

