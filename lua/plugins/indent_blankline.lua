return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        scope = {
            enabled = true,
        },
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
}
