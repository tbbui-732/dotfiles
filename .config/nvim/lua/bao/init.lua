-- Ordinary Nvim
require("bao.remap")
require("bao.set")

-- /// Background Color /// --
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme monokai]])

-- /// Personal Functions /// -- 
local function transparent()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
transparent()
