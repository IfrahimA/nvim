--Colors
vim.opt.termguicolors = true

-- Fill Chars
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars = { eob = " " }

-- Tab Settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Text Wrapping
vim.opt.wrap = false

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

--Cursor Line
vim.opt.cursorline = true

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
vim.keymap.set("n", "<leader>sh", function()
	vim.cmd("vsplit | enew")
end, { desc = "Vertical Split with Empty Buffer" })

vim.keymap.set("n", "<leader>sv", function()
	vim.cmd("split | enew")
end, { desc = "Horizontal Split with Empty Buffer" })

vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

-- Resize Windows
vim.keymap.set("n", "<leader>+", ":resize +5<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<leader>-", ":resize -5<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<leader>>", ":vertical resize +5<CR>", { desc = "Increase window width" })
vim.keymap.set("n", "<leader><", ":vertical resize -5<CR>", { desc = "Decrease window width" })

--Setting up Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })

--Automically Set :cd
vim.opt.autochdir = true

-- Terminal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })

--Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree", silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":NvimTreeFindFile", { desc = "Nvim Tree Find File", silent = true })

vim.g.neovide_input_macos_option_key_is_meta = "only_left"
