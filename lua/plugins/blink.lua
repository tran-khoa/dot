return {
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'enter' },
	    sources = {
            default = { "lsp", "copilot", "path", "snippets", "buffer" },
            providers = {
              copilot = {
              name = "copilot",
              module = "blink-copilot",
              score_offset = 100,
              async = true,
            },
              },
            },
        },
        opts_extend = { "sources.default" }
    },
}
