return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Tree",
            highlight = "Directory",
            separator = true,
          },
        },
        diagnostics = "nvim_lsp",
        separator_style = { "", "" },
        modified_icon = "●",
        show_close_icon = false,
        -- show_buffer_close_icons = false,
      }
    })
  end
}
