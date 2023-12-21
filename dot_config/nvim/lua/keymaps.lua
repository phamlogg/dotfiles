-- Keymaps
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards

-- keymap.set("n", "dw", "vb_d")

-- Select all

keymap.set("n", "<C-a>", "gg<S-v>G")

-- <leader> + (1-9) for tab switching
for i = 1,9,1
do
  keymap.set("n", "<leader>"..i, i.."gt", {})
end
keymap.set("n", "<leader>0", ":tablast<cr>", {})

-- Insert empty line without entering Insert mode

keymap.set('n', '<leader>o', ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', opts)
keymap.set('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', opts)

-- Alt/Meta + j/k to move line down/up 

keymap.set('n', '<M-k>', 'yyddkP', opts)
keymap.set('n', '<M-j>', 'yyddp', opts)

-- H/L to move to first/last character of line

keymap.set('n', 'H', '_', opts)
keymap.set('n', 'L', '$', opts)
