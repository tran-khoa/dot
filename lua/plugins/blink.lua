return {

	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets", "fang2hou/blink-copilot" },
		version = "1.*",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = { preset = "enter" },
			sources = {
				default = { "snippets", "lsp", "copilot", "path", "buffer" },
				providers = {
					copilot = {
						name = "copilot",
						module = "blink-copilot",
						score_offset = 100,
						async = true,
					},
				},
			},
			completion = {
				enabled = true,
				ghost_text = {
					enabled = true,
				},
				documentation = {
					enabled = true,
					auto_show = true,
				},
			},
			signature = {
				enabled = true,
				auto_trigger = true,
				max_lines = 5,
				max_height = 10,
			},
		},
		opts_extend = { "sources.default" },
	},
}
