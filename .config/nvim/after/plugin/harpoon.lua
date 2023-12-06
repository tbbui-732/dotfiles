local harpoon = require("harpoon")

-- Add files
vim.keymap.set("n", "<leader>a", function() harpoon.mark.add_file() end)

-- Toggle quick menu
vim.keymap.set("n", "<leader>m", function() harpoon.ui.toggle_quick_menu() end)

-- Navigation keybinds
vim.keymap.set("n", "<C-h>", function() harpoon.ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon.ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon.ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon.ui.nav_file(4) end)
