-- Pass through long, single-line texts
vim.keymap.set('n', 'k', function()
    local count = vim.v.count
    if count == 0 then
        return 'gk'
    end
    return 'k'
end, {expr = true, noremap = true})

vim.keymap.set('n', 'j', function()
    local count = vim.v.count
    if count == 0 then
        return 'gj'
    end
    return 'j'
end, {expr = true, noremap = true})

-- Open Nvim Tree
vim.keymap.set('n', '<leader>ee', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>')
