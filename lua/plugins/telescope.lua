return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep", "sharkdp/fd" }, -- Added a comma here
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			file_ignore_patterns = {
				"^.git/", -- Ignore the `.git` directory
				"^node_modules/", -- Example: Ignore `node_modules`
				"^.venv/", -- Example: Ignore Python virtual environments
			},
			pickers = {
				find_files = {
					hidden = true,
				},
			},
		})
	end,
}
