--Colors
vim.opt.termguicolors = true

-- Column (Left)
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab Settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Text Wrapping
vim.opt.wrap = false

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

--Cursor Line
vim.opt.cursorline = true

--Smooth Scroll
vim.opt.smoothscroll = true

--Dark Mode
vim.opt.background = "dark"

--Clipboard
vim.opt.clipboard = "unnamedplus"

--Keymaps
vim.g.mapleader = " "

-- Exit Interactive Mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })

-- Remove Search Highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Setting up Split Windows
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

--Setting up Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Open The Terminal
vim.keymap.set("n", "<leader>t", ":term<CR>", { desc = "Open Terminal" })

-- Nvim Tree
vim.g.loaded_netrw = 1 -- disable netrw at the very start of your init.lua
vim.g.loaded_netrwPlugin = 1

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })

--Formatter
vim.keymap.set("n", "<leader>fn", ":Format<CR>", { noremap = true, silent = true, desc = "Format Code" })
vim.keymap.set("n", "<leader>fw", ":FormatWrite<CR>", { noremap = true, silent = true, desc = "Format Write Code" })
