return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			hijack_cursor = true,
			filters = {
				dotfiles = true,
			},
			live_filter = {
				always_show_folders = false,
			},
		})
	end,
}
