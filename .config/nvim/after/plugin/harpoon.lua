local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Marking
vim.keymap.set("n", "<leader>a", function ()
        print("> (!) Marked current file with harpoon")
        mark.add_file()
end)
vim.keymap.set("n", "<C-m>", ui.toggle_quick_menu)

-- Navigation
vim.keymap.set("n", "<C-q>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-w>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-e>", function() ui.nav_file(3) end)
