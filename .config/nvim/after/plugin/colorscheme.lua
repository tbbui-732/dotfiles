---------------------------
-- COLORSCHEME SELECTION --
---------------------------
vim.o.background = "dark"
--vim.cmd.colorscheme "nord"
--vim.cmd.colorscheme "modus_vivendi"
--vim.cmd.colorscheme "alabaster"

vim.cmd("syntax off")


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
