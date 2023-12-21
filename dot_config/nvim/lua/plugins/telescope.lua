return   -- Telescope
{
  {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()

    require('telescope').setup({
      pickers = {
        find_files = {
          -- hidden = true,
        },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
    vim.keymap.set("n", "<leader>fb",
      function()
        builtin.buffers({
        sort_mru = true,
        ignore_current_buffer = true,
      }) end)
  end
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}

