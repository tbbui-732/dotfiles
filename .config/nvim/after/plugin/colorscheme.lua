-- background color
vim.o.background = "dark"

-- poimandres
require('poimandres').setup {
    bold_vert_split = false, -- use bold vertical separators
    dim_nc_background = false, -- dim 'non-current' window backgrounds
    disable_background = true, -- disable background
    disable_float_background = true, -- disable background for floats
    disable_italics = false, -- disable italics
}
vim.cmd.colorscheme "poimandres"

-- telescope highlighting settings
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#42675A" })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = "#42675A" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#1E1E1E" }) -- Same as Farin background
vim.api.nvim_set_hl(0, "TelescopeTitle", { bg = "#000000" })

-- sonokai
--vim.cmd("let g:sonokai_style='default'")
--vim.cmd("let g:sonokai_transparent_background=1")
--vim.cmd("let g:sonokai_better_performance=1")
--vim.cmd("let g:sonokai_disable_italic_comment=1")
--vim.cmd.colorscheme "sonokai"

-- gruvbox
-- vim.cmd("let g:gruvbox_material_background = 'material'")
-- vim.cmd("let g:gruvbox_material_better_performance = 1")
-- vim.cmd("let g:gruvbox_material_foreground = 'material'")
-- vim.cmd("let g:gruvbox_material_transparent_background = 1") -- '2' allows other UI elements to be transparent as well
-- vim.cmd.colorscheme "gruvbox-material"

-- transparency
-- local function transparent_override()
--     local highlights = {
--         "Normal",
--         "LineNr",
--         "Folded",
--         "NonText",
--         "SpecialKey",
--         "VertSplit",
--         "SignColumn",
--         "EndOfBuffer",
--         "TablineFill",
--         "HarpoonWindow",  -- harpoon plugin
--         "HarpoonBorder"
--     }
--     for _, name in pairs(highlights) do
--         vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
--     end
-- end
-- transparent_override()
