return {
    'sunnytamang/neodoc.nvim',
    config = function()
        require('neodoc').setup({
          python_interpreter = 'python3',
          docstring_style = 'google',
          enable_keymaps = true,
          keymap = '<leader>d',
          use_custom_template = false
        })
    end
}

