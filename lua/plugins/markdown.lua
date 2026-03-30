return {
  {
    "timantipov/md-table-tidy.nvim",
    -- default config
    opts = {
      padding = 1,        -- number of spaces for cell padding
      key = "<leader>tt", -- key for command :TableTidy<CR>
    }
  },
  {
    'Kicamon/markdown-table-mode.nvim',
    config = function()
      require('markdown-table-mode').setup()
    end
  }
}

