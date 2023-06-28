return {
    -- https://github.com/nvim-treesitter/nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    cmd = { "TSUpdateSync" },
    event = { "BufReadPost", "BufNewFile" },
    keys = {
        { "<c-space>", desc = "Increment selection" },
        { "<bs>", desc = "Decrement selection", mode = "x" },
    },
    config = function()
        require("nvim-treesitter.configs").setup {
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { "c", "cpp", "rust" },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        }
    end
}