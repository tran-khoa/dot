return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.files").setup()
	end,
	keys = {
		{
			"<leader>e",
			mode = { "n" },
			function()
				require("mini.files").open()
			end,
			desc = "Show files (mini.files)",
		},
	},
}
