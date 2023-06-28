-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        if vim.fn.isdirectory(data.file) == 1 then
            vim.cmd.cd(data.file)
            vim.cmd [[NvimTreeToggle]]
        end
    end
})
