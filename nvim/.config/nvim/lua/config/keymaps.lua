-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Select all

keymap("n", "<C-a>", "gg<S-v>G")

-- <leader> + (1-9) for tab switching
for i = 1, 9, 1 do
  keymap("n", "<leader>" .. i, i .. "gt", {})
end
keymap("n", "<leader>0", ":tablast<cr>", {})

-- Insert empty line without entering Insert mode

keymap("n", "<leader>o", ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', opts)
keymap("n", "<leader>O", ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', opts)

-- Alt/Meta + j/k to move line down/up

keymap("n", "<M-k>", "yyddkP", opts)
keymap("n", "<M-j>", "yyddp", opts)
keymap("v", "<M-k>", ":move '<-2<CR>gv-gv", opts)
keymap("v", "<M-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<M-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<M-k>", ":move '<-2<CR>gv-gv", opts)

-- H/L to move to first/last character of line

keymap("n", "H", "_", opts)
keymap("n", "L", "$", opts)

-- Menu navigation
keymap("c", "<C-j>", 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true })
keymap("c", "<C-k>", 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true })

-- Move cursor while staying in Insert mode
keymap("i", "<M-l>", "<C-o>l", opts)
keymap("i", "<M-h>", "<C-o>h", opts)
