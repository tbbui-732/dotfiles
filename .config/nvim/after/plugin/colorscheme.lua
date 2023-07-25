-- background color
vim.o.background = "dark"

-- gruvbox
-- vim.cmd("let g:gruvbox_material_transparent_background=0")
-- vim.cmd("let g:gruvbox_material_enable_bold=1")
-- vim.cmd("let g:gruvbox_material_enable_italic=1")
-- vim.cmd("let g:gruvbox_material_dim_inactive_windows=0")
-- vim.cmd("let g:gruvbox_material_ui_contrast='high'")
-- vim.cmd.colorscheme 'gruvbox-material'

-- juliana 
vim.cmd 'colo juliana'

-- transparency
local function transparent_override()
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
    "HarpoonWindow",  -- harpoon plugin
    "HarpoonBorder"
  }
  for _, name in pairs(highlights) do
    vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
  end
end
transparent_override()
