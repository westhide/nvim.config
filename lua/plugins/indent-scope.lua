return {
    -- https://github.com/echasnovski/mini.indentscope
    "echasnovski/mini.indentscope",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        symbol = "│",
        options = {
            try_as_border = true
        },
    },
}
