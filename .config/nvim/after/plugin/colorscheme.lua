-- background color
vim.o.background = "dark" -- "dark" for dark mode or "light" for light mode

-- Lua:
-- vscode colorscheme
local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = false,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()


-- adwaita colorscheme
-- vim.g.adwaita_darker = false -- for darker version
-- vim.g.adwaita_disable_cursorline = true -- to disable cursorline
-- vim.g.adwaita_transparent = true -- makes the background transparent
-- vim.cmd([[colorscheme adwaita]])

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
