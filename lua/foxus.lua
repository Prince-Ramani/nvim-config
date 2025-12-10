local M = {}

local C = {
    bg          = "#000000",
    fg          = "#FFB5C2",
    string      = "#09A129",
    keyword     = "#FF9500",
    func        = "#5887FF",
    visual      = "#1e3a8a",

    comment     = "#957186",
    boolean     = "#778472",
    constant    = "#E980FC",
    search_bg   = "#0E34A0",
    conditional = "#95B8D1",

    error       = "#C41E3D",
    error_bg    = "#3C0919",
    hint_info   = "#63372C",
    warn        = "#F68E5F",
}

M.setup = function()
    local set = vim.api.nvim_set_hl

    set(0, "Normal", { fg = C.fg, bg = C.bg })
    set(0, "NormalFloat", { fg = C.fg, bg = C.bg })
    set(0, "SignColumn", { bg = C.bg })
    set(0, "CursorLine", { bg = C.bg })
    set(0, "CursorLineNr", { fg = C.fg })
    set(0, "LineNr", { fg = C.fg })
    set(0, "Visual", { bg = C.visual, blend = 20 })
    set(0, "Comment", { fg = C.comment, italic = true })

    set(0, "Identifier", { fg = C.fg })
    set(0, "Function", { fg = C.func })
    set(0, "String", { fg = C.string })
    set(0, "Number", { fg = C.fg })
    set(0, "Boolean", { fg = C.boolean })
    set(0, "Constant", { fg = C.constant })
    set(0, "Keyword", { fg = C.keyword })
    set(0, "Conditional", { fg = C.conditional })
    set(0, "Operator", { fg = C.fg })
    set(0, "Type", { fg = C.fg })

    set(0, "@variable", { fg = C.fg })
    set(0, "@variable.builtin", { fg = C.fg })
    set(0, "@variable.parameter", { fg = C.fg })
    set(0, "@variable.member", { fg = C.fg })

    set(0, "@function", { fg = C.func })
    set(0, "@function.builtin", { fg = C.func })
    set(0, "@function.call", { fg = "#6C8EDB" })
    set(0, "@function.method", { fg = C.func })
    set(0, "@function.macro", { fg = C.constant })

    set(0, "@keyword", { fg = C.keyword })
    set(0, "@keyword.function", { fg = C.keyword })
    set(0, "@keyword.operator", { fg = C.keyword })
    set(0, "@keyword.return", { fg = C.keyword })
    set(0, "@conditional", { fg = C.conditional })

    set(0, "@string", { fg = C.string })
    set(0, "@string.regex", { fg = C.string })
    set(0, "@string.escape", { fg = C.string })
    set(0, "@string.special", { fg = C.string })

    set(0, "@constant", { fg = C.constant })
    set(0, "@constant.builtin", { fg = C.constant })
    set(0, "@constant.macro", { fg = C.constant })
    set(0, "@type", { fg = C.fg })
    set(0, "@type.builtin", { fg = C.fg })
    set(0, "@type.definition", { fg = C.fg })
    set(0, "@boolean", { fg = C.boolean })
    set(0, "@number", { fg = C.fg })
    set(0, "@float", { fg = C.fg })
    set(0, "@operator", { fg = C.fg })
    set(0, "@comment", { fg = C.comment, italic = true })

    set(0, "Search", { bg = C.search_bg, fg = C.fg })
    set(0, "IncSearch", { bg = C.search_bg, fg = C.fg })

    set(0, "DiagnosticError", { fg = C.error, bg = C.error_bg })
    set(0, "DiagnosticWarn", { fg = C.warn })
    set(0, "DiagnosticInfo", { fg = C.hint_info })
    set(0, "DiagnosticHint", { fg = C.hint_info })
    set(0, "StatusLine", { bg = C.bg, fg = C.fg })
    set(0, "StatusLineNc", { bg = C.bg, fg = C.fg })

    set(0, "@lsp", { fg = C.fg })
    set(0, "@lsp.type.variable", { link = "@variable" })
    set(0, "@lsp.type.parameter", { link = "@variable" })
    set(0, "@lsp.type.property", { link = "@variable" })
    set(0, "@lsp.type.field", { link = "@variable" })
    set(0, "@lsp.type.function", { link = "@function" })
    set(0, "@lsp.type.method", { link = "@function" })
    set(0, "@lsp.type.class", { fg = C.fg })
    set(0, "@lsp.type.enum", { fg = C.constant })
    set(0, "@lsp.type.interface", { fg = C.fg })
    set(0, "@lsp.type.namespace", { fg = C.constant })
    set(0, "@lsp.type.type", { fg = C.fg })
    set(0, "@lsp.type.struct", { fg = C.fg })
    set(0, "@lsp.type.boolean", { fg = C.boolean })
    set(0, "@lsp.type.string", { link = "@string" })
    set(0, "@lsp.type.number", { link = "@number" })
    set(0, "@lsp.type.regexp", { fg = C.string })
    set(0, "@lsp.type.decorator", { fg = C.func })
    set(0, "@lsp.type.event", { fg = C.constant })
    set(0, "@lsp.type.enumMember", { fg = C.constant })
    set(0, "@lsp.type.modifier", { fg = C.keyword })
    set(0, "@lsp.type.operator", { fg = C.fg })
    set(0, "@lsp.type.typeParameter", { fg = C.fg })

    set(0, "@lsp.mod.global", { fg = C.constant })
    set(0, "@lsp.mod.readonly", { fg = C.constant })
    set(0, "@lsp.mod.static", { fg = C.constant })
    set(0, "@lsp.mod.defaultLibrary", { fg = C.constant })
    set(0, "@lsp.typemod.variable.global", { fg = C.constant })
    set(0, "@lsp.typemod.variable.readonly", { fg = C.constant })
    set(0, "@lsp.typemod.property.readonly", { fg = C.constant })
    set(0, "@lsp.typemod.function.defaultLibrary", { fg = C.func })
    set(0, "@lsp.typemod.method.defaultLibrary", { fg = C.func })
    set(0, "@lsp.typemod.keyword.async", { fg = C.keyword })

    set(0, "FzfLuaNormal", { fg = C.fg, bg = C.bg })
    set(0, "FzfLuaCursorLine", { bg = C.visual })
    set(0, "FzfLuaPrompt", { fg = C.fg, bg = C.bg })
    set(0, "FzfLuaPointer", { fg = "#FFB5C2", bg = C.bg }) -- blossom pink
    set(0, "FzfLuaMarker", { fg = C.constant, bg = C.bg })
    set(0, "FzfLuaInfo", { fg = C.boolean, bg = C.bg })
    set(0, "FzfLuaPreviewBorder", { fg = C.fg, bg = C.bg })
    set(0, "FzfLuaPreviewNormal", { fg = C.fg, bg = C.bg })
    set(0, "FzfLuaPreviewScrollbar", { fg = C.fg, bg = C.bg })
end

return M
