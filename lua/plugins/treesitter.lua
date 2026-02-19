return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  opts = {
    indent = { enable = true },
    highlight = { enable = true },
    matchup = { enable = true },
    folds = { enable = true },
    ensure_installed = {
      "bash", "css", "html", "dockerfile", "python", "lua", "javascript", "jsdoc", "json", "latex", "markdown", "markdown_inline", "mermaid", "regex", "vim", "vimdoc", "xml", "yaml"
    }
  },
  config = function(_, opts)
    require("nvim-treesitter").setup(opts)
    -- you still can launch installation manually
    -- Example: :TSInstall html css printf comment
    require('nvim-treesitter').install(opts.ensure_installed)
  end,
}

