return {
	{
		"linux-cultist/venv-selector.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		lazy = false,
		keys = {
			{ ",v", "<cmd>VenvSelect<cr>" },
		},
		---@type venv-selector.Config
		opts = {
			-- Your settings go here
		},
	},
}
