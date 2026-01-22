vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

vim.g.colors_name = "lost"
local no = false

local c = {
    bg      = "#070707",
    fg      = "#f7f7f7",
    muted   = "#444444",
    subtle  = "#9a9a9a",
    keyword = "#ffffff",
    string  = "#79a8ff",
    boolean = "#EDEEC9",
    type    = "#E39695",
    error   = "#ff5f5f",
    warning = "#ffaf5f",
    info    = "#5fafff",
}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal", { fg = c.fg, bg = c.bg })
hl("NormalNC", { fg = c.fg, bg = c.bg })
hl("LineNr", { fg = c.muted })
hl("CursorLine", { bg = "#151515" })
hl("CursorLineNr", { fg = c.fg })
hl("VertSplit", { fg = c.bg })
hl("StatusLine", { fg = c.fg, bg = "#151515" })
hl("StatusLineNc", { fg = c.fg, bg = "#151515" })
hl("Visual", { bg = "#222222" })
hl("Boolean", { fg = c.boolean })

hl("Comment", { fg = c.muted })
hl("String", { fg = c.string })
hl("Keyword", { fg = c.keyword })
hl("Type", { fg = c.type })
hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.fg })
hl("Constant", { fg = c.fg })
hl("Operator", { fg = c.fg })

hl("@comment", { link = "Comment" })
hl("@string", { link = "String" })
hl("@keyword", { link = "Keyword" })
hl("@keyword.conditional", { fg = c.keyword, bold = true })
hl("@keyword.repeat", { fg = c.keyword, bold = true })
hl("@keyword.return", { fg = c.keyword, bold = true })
hl("@type", { link = "Type" })
hl("@type.builtin", { link = "Type" })
hl("@function", { fg = c.fg })
hl("@method", { fg = c.fg })
hl("@variable", { fg = c.fg })
hl("@boolean", { fg = c.boolean })
hl("@number", { fg = c.fg })
hl("@field", { fg = c.fg })
hl("@namespace", { fg = c.subtle })
hl("@parameter", { fg = c.subtle })
hl("@property", { fg = c.fg })
hl("@constant", { fg = c.fg })
hl("@operator", { fg = c.fg })

hl("@punctuation", { fg = c.fg })

hl("DiagnosticError", { fg = c.error })
hl("DiagnosticWarn", { fg = c.warning })
hl("DiagnosticInfo", { fg = c.info })
hl("DiagnosticHint", { fg = c.muted })

hl("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })

hl("DiagnosticVirtualTextError", { fg = c.error, bg = "#151515" })
hl("DiagnosticVirtualTextWarn", { fg = c.warning, bg = "#151515" })
hl("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#151515" })
hl("DiagnosticVirtualTextHint", { fg = c.muted, bg = "#151515" })

hl("DiagnosticSignError", { fg = c.error, bg = c.bg })
hl("DiagnosticSignWarn", { fg = c.warning, bg = c.bg })
hl("DiagnosticSignInfo", { fg = c.info, bg = c.bg })
hl("DiagnosticSignHint", { fg = c.muted, bg = c.bg })

hl("@lsp.type.function", { link = "@function" })
hl("@lsp.type.variable", { link = "@variable" })
hl("@lsp.type.parameter", { link = "@parameter" })
hl("@lsp.type.property", { link = "@property" })
hl("@lsp.type.type", { link = "@type" })
hl("@lsp.typemod.keyword.controlFlow", { link = "Keyword" })

hl("Search", { bg = "#303030" })
hl("IncSearch", { bg = "#404040" })

hl("FzfLuaFzfMatch", { fg = c.string })

hl("Cursor", { fg = c.bg, bg = c.fg })

hl("Pmenu", { fg = c.fg, bg = "#161616" })
hl("PmenuSel", { fg = c.fg, bg = "#222222" })
hl("PmenuSbar", { bg = "#151515" })
hl("PmenuThumb", { bg = "#303030" })
