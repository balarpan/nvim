return {
  "gbprod/nord.nvim",
  -- lazy = false,
  -- priority = 1000,
  lazy = true,
  name = "nord",
  config = function()
    require("nord").setup({
      transparent = false,  -- Enable this to disable setting the background color
      terminal_colors = true,  -- Configure the colors used when opening a `:terminal` in Neovim
      diff = { mode = "bg" },  -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
      borders = false,  -- Enable the border between verticaly split windows visible
      errors = { mode = "bg" }, -- Display mode for errors and diagnostics. values : [bg|fg|none]
      search = { theme = "vim" }, -- theme for highlighting search results, values : [vim|vscode]
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = {},
        functions = {},
        variables = {},
        -- To customize lualine/bufferline
        bufferline = {
          current = {},
          modified = { italic = true },
        },
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
      }
    })
  end
}

