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
			vim.lsp.config("basedpyright", {
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
			vim.lsp.config("ruff", {
				on_attach = function(client)
					client.server_capabilities.hoverProvider = false
				end,
			})
		end,
	},
}
