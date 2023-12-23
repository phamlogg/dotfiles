-- Appearance
vim.opt.termguicolors = true
vim.o.pumheight = 10 -- Max items to show in pop up menu
vim.o.cmdheight = 1 -- Max items to show in command menu
vim.o.conceallevel = 0 -- For markdown like elements

-- Files and Others
vim.o.fileencoding = "utf-8" -- File Encoding
vim.g.loaded_netrw = 1 -- Helps opening links in the internet (probabilly -_-)
vim.g.loaded_netrwPlugin = 1
vim.opt.autochdir = true
vim.cmd("filetype plugin indent on")
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.hidden = true
vim.o.whichwrap = "b,s,<,>,[,],h,l"
vim.opt.iskeyword:append("-,_")
vim.opt.virtualedit = "block"

-- Split windows
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Update and backups
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Backspace key
vim.o.backspace = "indent,eol,start"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Mouse
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.mouse = 'a'

-- Wrapping
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.o.cursorcolumn = false
vim.wo.signcolumn = "yes"

-- Tabs and indentations
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.showtabline = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true

vim.opt.list = true
vim.opt.fillchars = { eob = " " }

-- vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"


vim.cmd [[ au BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif ]]

vim.o.swapfile = false
