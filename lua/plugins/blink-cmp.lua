return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "*",
	opts = {
		cmdline = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "show", "accept" },
			},
			completion = { menu = { auto_show = true } },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		signature = {
			enabled = true,
			window = {
				show_documentation = true,
			},
		},
	},
}
