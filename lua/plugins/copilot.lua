return {
	-- {
	-- 	"github/copilot.vim",
	-- 	cmd = "Copilot",
	-- 	event = "BufWinEnter",
	-- 	init = function()
	-- 		vim.g.copilot_no_maps = true
	-- 	end,
	-- 	config = function()
	-- 		-- Block the normal Copilot suggestions
	-- 		vim.api.nvim_create_augroup("github_copilot", { clear = true })
	-- 		vim.api.nvim_create_autocmd({ "FileType", "BufUnload" }, {
	-- 			group = "github_copilot",
	-- 			callback = function(args)
	-- 				vim.fn["copilot#On" .. args.event]()
	-- 			end,
	-- 		})
	-- 		vim.fn["copilot#OnFileType"]()
	-- 	end,
	-- },
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = true,
			},
		},
	},
}
