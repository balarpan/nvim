return {
  'nvim-treesitter/nvim-treesitter',
  branch = "main", -- Required for 0.11
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
    local languages = opts.ensure_installed
    -- you still can launch installation manually
    -- Example: :TSInstall html css printf comment
    require('nvim-treesitter').install(languages)

    -- Treesitter features for installed languages must be enabled manually
    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        -- Enable native Neovim treesitter highlighting
        vim.treesitter.start()

        -- Configure code folding
        -- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldmethod = "expr"
        -- vim.wo.foldlevel = 99

        -- Enable treesitter-based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

  end,
}

