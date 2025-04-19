return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			hijack_cursor = true,
			renderer = {
				icons = {
					web_devicons = {
						folder = {
							enable = true,
						},
					},
				},
			},
			filters = {
				dotfiles = true,
			},
			live_filter = {
				always_show_folders = false,
			},
		})
	end,
}
