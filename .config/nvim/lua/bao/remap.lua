-- Pass through long, single-line texts
vim.keymap.set("n", "k", function()
  local count = vim.v.count
  if count == 0 then
    return "gk"
  end
  return "k"
end, {expr = true, noremap = true})

vim.keymap.set("n", "j", function()
  local count = vim.v.count
  if count == 0 then
    return "gj"
  end
  return "j"
end, {expr = true, noremap = true})

-- Netrw keybindings
vim.keymap.set("n", "<leader>ef", ":Ex<CR>");

-- View buffer list
vim.keymap.set("n", "<leader>m", ":buffers<CR>")

-- Bprev
vim.keymap.set("n", "<leader>j", ":bprev<CR>")

-- Bnext
vim.keymap.set("n", "<leader>k", ":bnext<CR>")

-- Half page up and down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Lex shortcut
vim.keymap.set("n", "<C-b>", ":Lex<CR>")
vim.keymap.set("i", "<C-b>", ":Lex<CR>")
