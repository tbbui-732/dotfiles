---------------------------
-- COLORSCHEME SELECTION --
---------------------------
vim.o.background = "dark"
vim.cmd.colorscheme 'gruvbox'
-- vim.cmd.colorscheme 'modus-vivendi'


---------------------------
--     MODUS CONFIGS     --
---------------------------
vim.g.modus_green_strings = 1


---------------------------
-- FUNCTION DECLARATIONS --
---------------------------
local function italicize_comment()
  vim.api.nvim_set_hl(0, 'Comment', { italic=true, fg="#637087" }) -- this is value between bluegray1 and bluegray2 of poimandres
end

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
-- italicize_comment()
transparency_override()
