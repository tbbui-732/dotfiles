-- background color
vim.o.background = "dark"

-- catpuccin
-- require("catppuccin").setup({
--     flavour = "mocha", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = true,
--     show_end_of_buffer = false, -- show the '~' characters after the end of buffers
--     term_colors = false,
--     dim_inactive = {
--         enabled = false,
--         shade = "dark",
--         percentage = 0.15,
--     },
--     no_italic = true, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--         comments = { "italic" },
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--         cmp = true,
--         gitsigns = false,
--         nvimtree = false,
--         telescope = true,
--         notify = false,
--         mini = false,
--         harpoon = true,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })
-- vim.cmd.colorscheme "catppuccin"

-- dracula colorscheme
-- local dracula = require("dracula")
-- dracula.setup({
--     -- customize dracula color palette
--     colors = {
--         bg = "#282A36",
--         fg = "#F8F8F2",
--         selection = "#44475A",
--         comment = "#6272A4",
--         red = "#FF5555",
--         orange = "#FFB86C",
--         yellow = "#F1FA8C",
--         green = "#50fa7b",
--         purple = "#BD93F9",
--         cyan = "#8BE9FD",
--         pink = "#FF79C6",
--         bright_red = "#FF6E6E",
--         bright_green = "#69FF94",
--         bright_yellow = "#FFFFA5",
--         bright_blue = "#D6ACFF",
--         bright_magenta = "#FF92DF",
--         bright_cyan = "#A4FFFF",
--         bright_white = "#FFFFFF",
--         menu = "#21222C",
--         visual = "#3E4452",
--         gutter_fg = "#4B5263",
--         nontext = "#3B4048",
--     },
--     -- show the '~' characters after the end of buffers
--     show_end_of_buffer = true, -- default false
--     -- use transparent background
--     transparent_bg = true, -- default false
--     -- set custom lualine background color
--     lualine_bg_color = "#44475a", -- default nil
--     -- set italic comment
--     italic_comment = false, -- default false
--     -- overrides the default highlights see `:h synIDattr`
--     overrides = {
--         -- Examples
--         -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
--         -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
--         -- Nothing = {} -- clear highlight of Nothing
--     },
-- })
-- vim.cmd.colorscheme "dracula"

-- vscode colorscheme
--local c = require('vscode.colors').get_colors()
--require('vscode').setup({
--    -- Alternatively set style in setup
--    -- style = 'light'
--
--    -- Enable transparent background
--    transparent = true,
--
--    -- Enable italic comment
--    italic_comments = true,
--
--    -- Disable nvim-tree background color
--    disable_nvimtree_bg = true,
--
--    -- Override colors (see ./lua/vscode/colors.lua)
--    color_overrides = {
--        vscLineNumber = '#FFFFFF',
--    },
--
--    -- Override highlight groups (see ./lua/vscode/theme.lua)
--    group_overrides = {
--        -- this supports the same val table as vim.api.nvim_set_hl
--        -- use colors from this colorscheme by requiring vscode.colors!
--        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
--    }
--})
--require('vscode').load()

-- adwaita colorscheme
-- vim.g.adwaita_darker = false -- for darker version
-- vim.g.adwaita_disable_cursorline = false -- to disable cursorline
-- vim.g.adwaita_transparent = true -- makes the background transparent
-- vim.cmd.colorscheme "adwaita"

-- gruvbox
-- vim.cmd("let g:gruvbox_material_background = 'mix'")
-- vim.cmd("let g:gruvbox_material_better_performance = 1")
-- vim.cmd("let g:gruvbox_material_foreground = 'material'")
-- vim.cmd("let g:gruvbox_material_transparent_background = 2") -- allows other UI elements to be transparent as well
-- vim.cmd.colorscheme "gruvbox-material"

-- poimandres
-- vim.cmd.colorscheme "poimandres"

-- sonokai
vim.cmd("let g:sonokai_transparent_background = 2")
vim.cmd("let g:sonokai_better_performance = 0")
vim.cmd("let g:sonokai_disable_italic_comment=1")
vim.cmd.colorscheme "sonokai"

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
