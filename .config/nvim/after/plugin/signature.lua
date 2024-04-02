cfg = {
    debug = false,                                              -- Set to true to enable debug logging
    log_path = vim.fn.stdpath("cache") .. "/lsp_signature.log", -- Log dir when debug is on
                                                                -- Default is  ~/.cache/nvim/lsp_signature.log

    verbose = false,                                            -- Show debug line number

    bind = true,                                                -- This is mandatory, otherwise border config won't get registered.
                                                                -- If you want to hook lspsaga or other signature handler, pls set to false

    doc_lines = 10,                                             -- Will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                                                                -- Set to 0 if you DO NOT want any API comments be shown
                                                                -- This setting only take effect in insert mode, it does not affect signature help in normal
                                                                -- Mode, 10 by default

    max_height = 12,                                            -- Max height of signature floating_window
    max_width = 80,                                             -- Max_width of signature floating_window
    noice = false,                                              -- Set to true if you using noice to render markdown
    wrap = true,                                                -- Allow doc/signature text wrap inside floating_window, useful if your lsp return doc/sig is too long

    floating_window = false,                                    -- Show hint in a floating window, set to false for virtual text only mode

    floating_window_above_cur_line = false,                     -- Try to place the floating above the current line when possible Note:
                                                                -- Will set to true when fully tested, set to false will use whichever side has more space
                                                                -- This setting will be helpful if you do not want the PUM and floating win overlap

    floating_window_off_x = 1,                                  -- Adjust float windows x position. 
                                                                -- Can be either a number or function

    floating_window_off_y = -3,                                 -- Adjust float windows y position. e.g -2 move window up 2 lines; 2 move down 2 lines
                                                                -- Can be either number or function, see examples

    close_timeout = 4000,                                       -- Close floating window after __ ms when last parameter is entered
    fix_pos = true,                                             -- Set to true, the floating window will not auto-close until finish all parameters
    hint_enable = true,                                         -- Virtual hint enable
    hint_prefix = "👉 ",                                        -- Pointer finger for parameter
    hint_scheme = "String",
    hi_parameter = "LspSignatureActiveParameter",               -- How your parameter will be highlight
    handler_opts = {
        border = "rounded"                                      -- Double, rounded, single, shadow, none, or a table of borders
    },

    always_trigger = false,                                     -- Sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

    auto_close_after = nil,                                     -- Autoclose signature float win after x sec, disabled if nil.
    extra_trigger_chars = {},                                   -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
    zindex = 200,                                               -- By default it will be on top of all floating windows, set to <= 50 send it to bottom

    padding = '',                                               -- Character to pad on left and right of signature can be ' ', or '|'  etc

    transparency = nil,                                         -- Disabled by default, allow floating win transparent value 1~100
    shadow_blend = 36,                                          -- If you using shadow as border use this set the opacity
    shadow_guibg = 'Black',                                     -- If you using shadow as border use this set the color e.g. 'Green' or '#121315'
    timer_interval = 200,                                       -- Default timer check interval set to lower value if you want to reduce latency
    toggle_key = nil,                                           -- Toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'

    select_signature_key = nil,                                 -- Cycle to next signature, e.g. '<M-n>' function overloading
    move_cursor_key = nil,                                      -- Imap, use nvim_set_current_win to move cursor between current win and floating
}

-- RECOMMENDED:
require'lsp_signature'.setup(cfg)                               -- No need to specify bufnr if you don't use toggle_key

-- You can also do this inside lsp on_attach
-- NOTE: on_attach deprecated
require'lsp_signature'.on_attach(cfg)                           -- No need to specify bufnr if you don't use toggle_key
