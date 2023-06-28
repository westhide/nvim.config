SET_KEYMAPS {
    -- Window
    { "n", "<leader>-", "<C-W>s", { desc = "Split window below" } },
    { "n", "<leader>|", "<C-W>v", { desc = "Split window right" } },
    { "n", "<leader>wd", "<C-W>c", { desc = "Delete window" } },

    -- Lazy
    { "n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" } },

    -- Quit
    { "n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" } },

    -- Window move
    { "n", "<C-h>", "<C-w>h", { desc = "Go to left window" } },
    { "n", "<C-j>", "<C-w>j", { desc = "Go to lower window" } },
    { "n", "<C-k>", "<C-w>k", { desc = "Go to upper window" } },
    { "n", "<C-l>", "<C-w>l", { desc = "Go to right window" } },

    -- Save file
    { { "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" } },

    -- Window resize
    { "n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" } },
    { "n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" } },
    { "n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" } },
    { "n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" } },

    -- Buffer
    { "n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" } },
    { "n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" } },

    -- Clear search highlight
    { { "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" } },

    -- Better indenting
    { "v", "<", "<gv" },
    { "v", ">", ">gv" },
}
