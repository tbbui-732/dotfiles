-- Telescope configuration
local builtin = require('telescope.builtin')
local utils = require("telescope.utils")

vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files( { cwd = utils.buffer_dir() })
end, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
