-- background color
vim.o.background = "dark"

-- gruvbox
-- vim.cmd.colorscheme 'gruvbox'

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
