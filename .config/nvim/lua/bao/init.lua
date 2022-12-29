require("bao.remap")
require("bao.set")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- NOTE there's probably a better way to separate this file, but whatever it's a pain in the ass
function transparent()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

transparent()
