return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- You can put your colorscheme-specific configuration here
    -- For example, setting the style
    require("tokyonight").setup({
      style = "night", -- "storm", "moon", "night", "day"
      -- Other settings...
    })

    -- Now, set the colorscheme itself
    vim.cmd.colorscheme("tokyonight")
  end,
}

