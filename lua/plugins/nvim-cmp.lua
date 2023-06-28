return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        -- https://github.com/onsails/lspkind.nvim
        "onsails/lspkind.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },
    event = "InsertEnter",
    config = function()
        local cmp = require("cmp")
        cmp.setup {
            views = {
                entries = "native"
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end
            },
            window = {
                documentation = {
                    border = "rounded"
                }
            },
            mapping = {
                ["<CR>"] = cmp.mapping.confirm { select = true },
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "path" },
                { name = "luasnip" }
            },
            formatting = {
                format = require("lspkind").cmp_format {
                    mode = "symbol",
                    ellipsis_char = "...",
                }
            },
            experimental = {
                ghost_text = true,
            },
        }
    end
}
