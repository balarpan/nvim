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
    -- Pligin is disabled by default.
    -- You MUST toggle it by :Mtm command
    -- Or use ftplugin file to enable it when *.md loaded
    'Kicamon/markdown-table-mode.nvim',
    config = function()
      require('markdown-table-mode').setup({
        filetype = { '*.md', },
        options= {
          insert = true, -- when typing "|"
          insert_leave = true, -- when leaving insert
          pad_separator_line = false, -- add space in separator line
          alig_style = 'default', -- default, left, center, right
        },
      })
    end
  }
}

