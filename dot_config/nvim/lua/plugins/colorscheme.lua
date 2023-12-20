return { 
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      undercurl = true,
      dimInactive = true,
      terminalColors = true,
    })
    vim.cmd.colorscheme("kanagawa-dragon")
  end,
}
