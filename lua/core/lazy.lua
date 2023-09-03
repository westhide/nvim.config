vim.opt.rtp:prepend(vim.fn.stdpath "data" .. "/lazy/lazy.nvim")

require "lazy".setup {
    spec = {
        { import = "plugins" }
    },
    defaults = {
        -- lazy = true,
        -- version = true,
    }
}
