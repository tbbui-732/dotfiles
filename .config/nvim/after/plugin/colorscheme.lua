---------------------------
-- COLORSCHEME SELECTION --
---------------------------
vim.o.background = "dark"
-- vim.cmd.colorscheme "rose-pine"
vim.cmd.colorscheme "nord"
-- vim.cmd.colorscheme "matrix"

---------------------------
-- FUNCTION DECLARATIONS --
---------------------------
local function transparency_override()
    local highlights = {
        "Normal",
        "LineNr",
        "Folded",
        "NonText",
        "SpecialKey",
        "VertSplit",
        "SignColumn",
        "EndOfBuffer",
        "TablineFill",

        -- Harpoon Plugin
        "HarpoonWindow",
        "HarpoonBorder"
    }

    for _, name in pairs(highlights) do
        vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
    end
end


---------------------------
--          RUN          --
---------------------------
transparency_override()
