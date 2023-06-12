-- background color
vim.o.background = "dark"

-- Fluoromachine
--require('fluoromachine').setup {
--  glow = true,
--  theme = "delta",
--  --theme = "retrowave", 
--  --theme = "fluoromachine",  -- default
--  --transparent = "full",
--  overrides = {
--    ['@type'] =     { italic = true,  bold = false },
--    ['@function'] = { italic = false, bold = false },
--    ['@comment'] =  { italic = true },
--    ['@keyword'] =  { italic = false },
--    ['@constant'] = { italic = false, bold = true },
--    ['@variable'] = { italic = true },
--    ['@field'] =    { italic = true },
--    ['@parameter'] = { italic = true },
--  },
--  brightness = 0.03,
--}
--vim.cmd.colorscheme "fluoromachine"

-- Sonokai
-- vim.cmd("let g:sonokai_style = 'shusia'")
-- vim.cmd("let g:sonokai_style_performance = '1'")
-- vim.cmd("let g:sonokai_dim_inactive_windows = '1'")
-- vim.cmd("let g:sonokai_enable_italic = '1'")
-- vim.cmd.colorscheme "sonokai"

-- Poimandres
require('poimandres').setup {
  bold_vert_split = false, -- use bold vertical separators
  dim_nc_background = true, -- dim 'non-current' window backgrounds
  disable_background = false, -- disable background
  disable_float_background = false, -- disable background for floats
  disable_italics = false, -- disable italics
}
vim.cmd.colorscheme 'poimandres'

-- telescope highlighting settings
local light_green = "#42675A"
local sonokai_bg = "#212327"
vim.api.nvim_set_hl(0, "TelescopeSelection",      { bg = light_green })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = light_green })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = sonokai_bg })
vim.api.nvim_set_hl(0, "TelescopeTitle",  { bg = sonokai_bg })

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
