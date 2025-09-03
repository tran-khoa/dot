return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets", "fang2hou/blink-copilot" },
		version = "1.*",
		opts = {
			keymap = { preset = "enter" },
			sources = {
				default = { "snippets", "lsp", "copilot", "path", "buffer" },
				providers = {
					snippets = {
						score_offset = 5,
					},
					lsp = {
						score_offset = 4,
					},
					copilot = {
						name = "copilot",
						module = "blink-copilot",
						score_offset = 1000,
						async = true,
					},
				},
			},
			completion = {
				ghost_text = {
					enabled = true,
				},
				documentation = {
					auto_show = true,
				},
				list = {
					selection = {
						preselect = false,
					},
				},
			},
			signature = {
				enabled = true,
				trigger = {
					enabled = true,
				},
				window = {
					max_height = 10,
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
