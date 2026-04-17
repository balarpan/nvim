return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "polirritmico/telescope-lazy-plugins.nvim" },
  cmd = "Telescope", -- Loads Telescope when running :Telescope
  keys = {
    -- Loads Telescope when pressing <leader>ff
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>z=", "<cmd>Telescope spell_suggest theme=cursor<cr>", desc = "Spell suggestions" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = { preview_width = 0.6 },
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
          preview_width = 0.7,
          width = 0.2, -- Make it narrow
          height = 0.3,
        }
      }
    })
  end,
}

