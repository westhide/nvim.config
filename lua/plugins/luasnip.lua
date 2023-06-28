return {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    dependencies = {
        -- https://github.com/rafamadriz/friendly-snippets
        "rafamadriz/friendly-snippets",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
    opts = {
        history = true,
        delete_check_events = "TextChanged",
    },
}