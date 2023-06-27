-- background color
vim.o.background = "dark"

-- modus (emacs)
vim.cmd.colorscheme 'modus-vivendi' -- dark
--vim.cmd.colorscheme 'modus-operandi'-- light

-- transparency
--local function transparent_override()
--  local highlights = {
--    "Normal",
--    "LineNr",
--    "Folded",
--    "NonText",
--    "SpecialKey",
--    "VertSplit",
--    "SignColumn",
--    "EndOfBuffer",
--    "TablineFill",
--    "HarpoonWindow",  -- harpoon plugin
--    "HarpoonBorder"
--  }
--  for _, name in pairs(highlights) do
--    vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
--  end
--end
--transparent_override()
