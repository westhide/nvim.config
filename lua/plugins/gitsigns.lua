return {
    -- https://github.com/lewis6991/gitsigns.nvim
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        signs = {
            add = { text = "▎" },
            change = { text = " " },
            delete = { text = " " },
            topdelete = { text = "󱅁 " },
            changedelete = { text = "󰍷 " },
            untracked = { text = " " }
        },
    }
}
