function SET_GLOBALS(opts)
    for key, val in pairs(opts) do
        vim.g[key] = val
    end
end

function SET_OPTIONS(opts)
    for key, val in pairs(opts) do
        vim.opt[key] = val
    end
end

function SET_KEYMAPS(maps)
    --vim.iter(maps).map(unpack).each(vim.keymap.set)
    for _, args in pairs(maps) do
        vim.keymap.set(unpack(args))
    end
end
