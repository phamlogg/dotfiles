return
{

  "folke/which-key.nvim",
  event = "VeryLazy",
  dependencies = {
    "akinsho/toggleterm.nvim",
  },

  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300

    local wk = require("which-key")
    -- border
    wk.setup({
      window = {
        border = "double",
      },
    })

    local terminal = require("toggleterm.terminal").Terminal

    local toggle_float = function()
      local float = terminal:new({dir = "./", direction = "float" })
      return float:toggle()
    end

    local toggle_lazygit = function()
      local lazygit = terminal:new({ cmd = "lazygit", direction = "float" })
      return lazygit:toggle()
    end

    -- Keymaps
    local mappings = {
      -- Basic operations
      w = { ":w<cr>", "Save File" },
      q = { ":q<cr>", "Quit" },

      -- Telescope
      f = {
        name = " Telescope",
        f = { ":Telescope find_files theme=ivy<cr>", "Find Files" },
        b = { ":Telescope buffers theme=ivy<cr>", "Buffers" },
        g = { ":Telescope live_grep theme=ivy<cr>", "Live Grep" },
        r = { ":Telescope oldfiles theme=ivy<cr>", "Recently Opened Files" },
        R = { ":Telescope resume theme=ivy<cr>", "Resume Telescope" },
      },

      -- Buffers
      b = {
        name = " Buffers",
        x = { ":bdelete<cr>", "Close Buffer" },
        n = { ":bnext<cr>", "Next Buffer" },
        p = { ":blast<cr>", "Previous Buffer" },
      },

      -- NvimTree
      e = {
        name = " NvimTree",
        e = { ":NvimTreeToggle<cr>", "NvimTree Toggle" },
        f = { ":NvimTreeFocus<cr>", "NvimTree Focus" },
        h = { ":e ~/<cr>", "NvimTree Home" }
      },

      -- Lsp
      l = {
        name = " LSP",
        t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
        d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
        D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
        r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },

        R = { "<cmd>Lspsaga rename<cr>", "Rename" },
        a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
      },

      -- Bufferline
      ["<Tab>"] = { ":BufferLineCycleNext<cr>", "Next Buffer" },
      ["<S-Tab>"] = { ":BufferLineCyclePrev<cr>", "Previous Buffer" },

      -- Treesitter Selection
      s = {
        name = " Selection",
        s = { "Initiate Selection" },
        i = { "Increment Node Selection" },
        d = { "Decrement Node Selection" },
        c = { "Increment Scope Selection" },
      },

      -- Formatting
      F = { ":lua vim.lsp.buf.format()<cr>", " Format Code" },

      -- Terminal
      t = {
        name = " Terminal ",
        t = { ":ToggleTerm dir=./<cr>", "Split Below" },
        f = { toggle_float, "Floating Terminal" },
        l = { toggle_lazygit, "LazyGit" },
      },

      -- Ignore List
      ["1"] = "which_key_ignore",
      ["2"] = "which_key_ignore",
      ["3"] = "which_key_ignore",
      ["4"] = "which_key_ignore",
      ["5"] = "which_key_ignore",
      ["6"] = "which_key_ignore",
      ["7"] = "which_key_ignore",
      ["8"] = "which_key_ignore",
      ["9"] = "which_key_ignore",
      ["0"] = "which_key_ignore",
      ["o"] = "which_key_ignore",
      ["O"] = "which_key_ignore",
    }

    local opts = { prefix = "<leader>" }
    wk.register(mappings, opts)
  end,
}
