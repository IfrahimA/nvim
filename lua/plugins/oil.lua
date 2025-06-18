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
			columns = {
				"icon",
			},
			keymaps = {
				["<C-d>"] = { "actions.cd", mode = "n" },
			},
			skip_confirm_for_simple_edits = true,
			watch_for_changes = true,
		})
	end,
}
