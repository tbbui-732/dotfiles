-- background color
vim.o.background = "dark" -- "dark" for dark mode or "light" for light mode

-- Lua:
vim.g.adwaita_darker = false -- for darker version
vim.g.adwaita_disable_cursorline = true -- to disable cursorline
vim.g.adwaita_transparent = true -- makes the background transparent
vim.cmd([[colorscheme adwaita]])

-- transparency
-- local function transparent_override()
--    local highlights = {
--      "Normal",
--      "LineNr",
--      "Folded",
--      "NonText",
--      "SpecialKey",
--      "VertSplit",
--      "SignColumn",
--      "EndOfBuffer",
--      "TablineFill"
--    }
--    for _, name in pairs(highlights) do
--      vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
--    end
--  end
-- transparent_override()
