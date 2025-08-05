return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
			{ "<leader>fp", "<cmd>Telescope live_grep glob_pattern=*.py<cr>", desc = "Live Grep (Only python files)" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
			{ "<leader>fl", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Help Tags" },
		},
		opts = {
			extensions = {
				fzy_native = {
					override_generic_sorter = false,
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
		},
	},
	{
		"nvim-telescope/telescope-fzy-native.nvim",
		setup = function()
			require("telescope").load_extension("fzy_native")
		end,
	},
}
