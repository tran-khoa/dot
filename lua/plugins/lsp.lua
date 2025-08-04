return {
	{
		"mason-org/mason.nvim",
		opts = { ensure_installed = { "basedpyright" } },
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = false,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.basedpyright.setup({
				on_attach = function(client, bufnr)
					vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
				end,
				settings = {
					basedpyright = {
						analysis = {
							exclude = { "**/.venv" },
							typeCheckingMode = "recommended",
							autoImportCompletions = true,
							autoSearchPaths = true,
							diagnosticMode = "workspace",
							inlayHints = {
								functionReturnTypes = true,
								variableTypes = true,
								callArgumentNames = true,
								genericTypes = true,
							},
							autoFormatStrings = true,
						},
					},
				},
			})
			lspconfig.ruff.setup({
				on_attach = function(client)
					client.server_capabilities.hoverProvider = false
				end,
			})
		end,
	},
}
