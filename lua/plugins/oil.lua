return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			win_options = {
				signcolumn = "yes:2",
			},
			keymaps = {
				["]"] = { "actions.cd", mode = "n" },
			},
		})
	end,
}
