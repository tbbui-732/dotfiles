local lsp = require('lsp-zero')

lsp.set_preferences({
        suggest_lsp_servers = true,
        setup_servers_on_start = true,
        set_lsp_keymaps = true,
        configure_diagnostics = true,
        cmp_capabilities = true,
        manage_nvim_cmp = true,
        call_servers = 'local',
        sign_icons = {
                error = '✘',
                warn = '▲',
                hint = '⚑',
                info = ''
        }
})

-- Automatically displays diagnostics on hold
vim.api.nvim_create_autocmd({"CursorHold"}, {
        callback = function()
                vim.diagnostic.open_float()
        end
})

-- LSP mappings
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
vim.keymap.set('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<cr>')

lsp.nvim_workspace()
lsp.setup()

--   -- LSP actions
--   map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
--   map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
--   map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
--   map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
--   map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
--   map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
--   map('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
-- 
--   -- Diagnostics
--   map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
--   map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
--   map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
