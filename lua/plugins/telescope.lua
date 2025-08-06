return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
			{ "<leader>ft", "<cmd>Telescope tags<cr>", desc = "Tags" },
		},
		config = function()
			require("telescope").setup({
				extensions = {
					fzy_native = {
						override_generic_sorter = true,
						override_file_sorter = true,
					},
				},
				pickers = {
					live_grep = {
						file_ignore_patterns = { ".git" },
						additional_args = function(opts)
							return { "--hidden", "--no-ignore" }
						end,
					},
				},
			})
			require("telescope").load_extension("fzy_native")
		end,
	},
	{
		"nvim-telescope/telescope-fzy-native.nvim",
	},
}
