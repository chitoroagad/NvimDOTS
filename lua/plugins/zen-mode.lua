return {
    "folke/zen-mode.nvim",
    lazy = false,
    opts = {
        plugins = {
            tmux = { enabled = true },
            kitty = { enabled = true },
            gitsigns = { enabled = false },
        },
        -- window = {
        --     options = {
        --         number = false,
        --     },
        -- },
    },
}
