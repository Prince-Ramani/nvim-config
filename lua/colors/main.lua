local M = {}

function M.setup()
        vim.cmd("highlight clear")
        if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
        vim.o.termguicolors = true
        vim.g.colors_name = "focus"

        local palette = {
                bg      = "#000000",
                bbg     = "#131313",
                fg      = "#d3d7da",
                muted   = "#767676",
                subtle  = "#2a2f3a",
                accent  = "#c8875b",
                error   = "#f7768e",
                warning = "#e0af68",
                hint    = "#9ece6a",
                info    = "#7dcfff",
        }

        local set = vim.api.nvim_set_hl

        set(0, "Normal", { fg = palette.fg, bg = palette.bg })
        set(0, "NormalNC", { fg = palette.fg, bg = palette.bg })

        set(0, "CursorLine", { bg = "#1a1f2a" })
        set(0, "CursorLineNr", { fg = palette.accent, bold = true })
        set(0, "LineNr", { fg = palette.subtle })

        set(0, "Visual", { bg = palette.subtle })
        set(0, "Search", { bg = "#2a2f3a" })
        set(0, "IncSearch", { bg = "#3a4152" })

        set(0, "VertSplit", { fg = palette.bg })
        set(0, "WinSeparator", { fg = palette.bg })

        set(0, "Pmenu", { fg = palette.fg, bg = palette.bbg })
        set(0, "PmenuSel", { fg = palette.accent, bg = palette.subtle })
        set(0, "PmenuSbar", { bg = palette.subtle })
        set(0, "PmenuThumb", { bg = palette.muted })


        -- 💬 Text
        set(0, "Comment", { fg = palette.muted })
        set(0, "Constant", { fg = palette.fg })
        set(0, "String", { fg = palette.fg })
        set(0, "Identifier", { fg = palette.fg })
        set(0, "Function", { fg = palette.fg })
        set(0, "Statement", { fg = palette.accent })
        set(0, "Keyword", { fg = palette.accent })
        set(0, "Type", { fg = palette.fg })

        -- ⚠️ Diagnostics (LSP)
        set(0, "DiagnosticError", { fg = palette.error })
        set(0, "DiagnosticWarn", { fg = palette.warning })
        set(0, "DiagnosticInfo", { fg = palette.info })
        set(0, "DiagnosticHint", { fg = palette.hint })

        set(0, "DiagnosticUnderlineError", { undercurl = true, sp = palette.error })
        set(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = palette.warning })
        set(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = palette.info })
        set(0, "DiagnosticUnderlineHint", { undercurl = true, sp = palette.hint })

        -- 🔍 Treesitter (minimal override)
        set(0, "@comment", { fg = palette.muted })
        set(0, "@keyword", { fg = palette.accent })
        set(0, "@function", { fg = palette.fg })
        set(0, "@string", { fg = palette.fg })
        set(0, "@variable", { fg = palette.fg })
        set(0, "@type", { fg = palette.fg })

        -- 🔧 LSP references
        set(0, "LspReferenceText", { bg = "#222733" })
        set(0, "LspReferenceRead", { bg = "#222733" })
        set(0, "LspReferenceWrite", { bg = "#222733" })

        -- FZF-Lua (fallback groups)
        set(0, "FzfLuaNormal", { bg = palette.bbg })
        set(0, "FzfLuaBorder", { fg = palette.subtle })
        set(0, "FzfLuaCursorLine", { bg = palette.subtle })

        -- 📊 Statusline
        set(0, "StatusLine", { fg = palette.fg, bg = palette.bg })
        set(0, "StatusLineNC", { fg = palette.muted, bg = palette.bg })

        -- 🔹 Misc
        set(0, "MatchParen", { bg = "#2a2f3a" })
        set(0, "FloatBorder", { fg = palette.subtle, bg = palette.bbg })
end

return M
