return {
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
          border = "double",
          width = 0.8,
          height = 0.8,
        },
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
       ensure_installed = {
        "lua_ls",
        "tsserver",
       },
      })

      require("mason-lspconfig").setup_handlers({
        function (server_name)
          require("lspconfig")[server_name].setup({})
        end
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },

    config = function()
      local lspconfig = require("lspconfig")
      local lspui = require("lspconfig.ui.windows")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local capabilities = cmp_nvim_lsp.default_capabilities()

      local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      -- LspInfo Borders
      lspui.default_options.border = "double"
    end
  },
}
