return {
	{
		"linux-cultist/venv-selector.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		lazy = false,
		branch = "regexp", -- This is the regexp branch, use this for the new version
		keys = {
			{ ",v", "<cmd>VenvSelect<cr>" },
		},
		---@type venv-selector.Config
		opts = {
			-- Your settings go here
		},
	},
}
