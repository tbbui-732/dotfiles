local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-,>', ':BufferPrevious<CR>', opts)
map('n', '<C-.>', ':BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<C-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<C->>', ':BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<C-1>', ':BufferGoto 1<CR>', opts)
map('n', '<C-2>', ':BufferGoto 2<CR>', opts)
map('n', '<C-3>', ':BufferGoto 3<CR>', opts)
map('n', '<C-4>', ':BufferGoto 4<CR>', opts)
map('n', '<C-5>', ':BufferGoto 5<CR>', opts)
map('n', '<C-6>', ':BufferGoto 6<CR>', opts)
map('n', '<C-7>', ':BufferGoto 7<CR>', opts)
map('n', '<C-8>', ':BufferGoto 8<CR>', opts)
map('n', '<C-9>', ':BufferGoto 9<CR>', opts)
map('n', '<C-0>', ':BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<C-p>', ':BufferPin<CR>', opts)

-- Close buffer
map('n', '<C-c>', ':BufferClose<CR>', opts)

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)

-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
