-- background color
vim.o.background = "dark" -- "dark" for dark mode or "light" for light mode

-- set colorscheme after options
vim.cmd('colorscheme monokai')

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
     "TablineFill"
   }
   for _, name in pairs(highlights) do
     vim.cmd.highlight(name .. ' guibg=none ctermbg=none')
   end
 end
transparent_override()
