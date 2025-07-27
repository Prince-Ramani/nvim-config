vim.g.colors_name = "impossible"
local function set(group, options)
    vim.api.nvim_set_hl(0, group, options)
end

local colors = {
    bg         = "#000000",
    fg         = "#FCFFF7",
    comment    = "#767676",
    keyword    = "#58A0C8",
    string     = "#D7C9AA",
    func       = "#FF6767",
    type       = "#0496ff",
    number     = "#EE4266",
    constant   = "#D49A1A",
    error      = "#E57373",
    warning    = "#FFD54F",
    info       = "#4FC1FF",
    cursorline = "#1e1e1e",
    linenr     = "#5A5A5A",
    cursorlnr  = "#7A7A7A",
    selection  = "#3A5F8A",
}

set("Normal", { fg = colors.fg, bg = colors.bg })

set("Comment", { fg = colors.comment, italic = true })

set("CursorLine", { bg = colors.cursorline })

set("LineNr", { fg = colors.linenr })

set("CursorLineNr", { fg = colors.cursorlnr })

set("Visual", { bg = colors.selection })

set("MatchParen", { bg = "#777777", fg = "#FFFFFF", bold = true })

set("Search", { bg = "#44475a", fg = "#ffffff", bold = true })


set("Keyword", { fg = colors.keyword })

set("String", { fg = colors.string })

set("Function", { fg = colors.func })
set("@function", { fg = colors.func })
set("@function.call", { fg = colors.func })
set("@function.builtin", { fg = "#FF8787" })

set("Type", { fg = colors.type })

set("@type", { fg = colors.type, bold = true })
set("@type.builtin", { fg = colors.type })
set("@type.definition", { fg = colors.type, bold = true })
set("@lsp.type.type", { fg = colors.type, bold = true })
set("@lsp.type.class", { fg = colors.type, bold = true })
set("@lsp.type.struct", { fg = colors.type, bold = true })
set("@lsp.type.enum", { fg = colors.type })

set("Constant", { fg = colors.constant })

set("Number", { fg = colors.number })

set("Identifier", { fg = colors.fg })



set("DiagnosticError", { fg = colors.error })
set("DiagnosticWarn", { fg = colors.warning })

set("DiagnosticInfo", { fg = colors.info })

set("DiagnosticHint", { fg = colors.comment })


set("SignColumn", { bg = colors.bg })


set("Pmenu", { fg = colors.fg, bg = "#071623", blend = 10 })
set("PmenuSel", { fg = colors.fg, bg = colors.selection, bold = true })

-- set("StatusLine", { fg = "#331832", bg = "#6E75A8" })
set("StatusLine", { fg = "#5eacd3", bg = "#333333", blend = 10 })
set("StatusLineNC", { fg = "#5eacd3", bg = "#333333" })

set("NormalNC", { fg = colors.fg, bg = "#0A0A0A" })

set("TabLine", { fg = "#888888", bg = "#1a1a1a" })
set("TabLineSel", { fg = colors.fg, bg = "#3c3c3c", bold = true })


is_transparent = false

function toggleTransparency()
    if is_transparent then
        set("Normal", { fg = colors.fg, bg = "#000000" })
        set("SignColumn", { bg = colors.bg })
        set("NormalNC", { fg = colors.fg, bg = "#0A0A0A" })
        set("VertSplit", { bg = "#2c2c2c" })
        is_transparent = false
    else
        set("Normal", { fg = colors.fg, bg = "NONE" })
        set("SignColumn", { bg = "NONE" })
        set("NormalNC", { fg = colors.fg, bg = "NONE" })
        set("VertSplit", { bg = "NONE" })
        local set = vim.api.nvim_set_hl
        set(0, "TelescopeNormal", { fg = colors.fg, bg = "NONE" })
        set(0, "TelescopeResultsBorder", { fg = "#6E75A8" })
        set(0, "TelescopeResultsTitle", { fg = "#cccccc", bold = true, bg = "NONE" })
        set(0, "TelescopePreviewBorder", { fg = "#6E75A8", bg = "NONE" })
        set(0, "TelescopePromptBorder", { fg = "#6E75A8" })
        set(0, "TelescopePromptTitle", { fg = "#ffffff", bold = true })
        set(0, "TelescopePromptNormal", { fg = colors.fg, bg = "NONE" })
        set(0, "TelescopeMatching", { fg = "#8C8C8C", bold = true })


        vim.api.nvim_set_hl(0, "MasonHeader", { fg = "#ffffff", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "MasonHeaderSecondary", { fg = "#ffffff", bg = "NONE" })
        vim.api.nvim_set_hl(0, "MasonHighlight", { fg = "#d7875f", bold = true })
        vim.api.nvim_set_hl(0, "MasonHighlightBlock", { fg = "#ffffff", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", { fg = "#ffffff", bg = "NONE", bold = true })
        vim.api.nvim_set_hl(0, "MasonError", { fg = "#ff5f5f", bold = true })
        vim.api.nvim_set_hl(0, "MasonMuted", { fg = "#888888" })
        vim.api.nvim_set_hl(0, "MasonMutedBlock", { fg = "#cccccc", bg = "NONE" })



        is_transparent = true
    end
end

local set = vim.api.nvim_set_hl
set(0, "TelescopeNormal", { fg = colors.fg, bg = colors.bg })
set(0, "TelescopeResultsBorder", { fg = "#6E75A8" })
set(0, "TelescopeResultsTitle", { fg = "#cccccc", bold = true })
set(0, "TelescopePreviewBorder", { fg = "#6E75A8", })
set(0, "TelescopePromptBorder", { fg = "#6E75A8" })
set(0, "TelescopePromptTitle", { fg = "#ffffff", bold = true })
set(0, "TelescopePromptNormal", { fg = colors.fg })
set(0, "TelescopeMatching", { fg = "#8C8C8C", bold = true })


vim.api.nvim_set_hl(0, "MasonHeader", { fg = "#ffffff", bg = "#5f87ff", bold = true })
vim.api.nvim_set_hl(0, "MasonHeaderSecondary", { fg = "#ffffff", bg = "#87af5f" })
vim.api.nvim_set_hl(0, "MasonHighlight", { fg = "#d7875f", bold = true })
vim.api.nvim_set_hl(0, "MasonHighlightBlock", { fg = "#ffffff", bg = "#af5fff", bold = true })
vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", { fg = "#ffffff", bg = "#d75f5f", bold = true })
vim.api.nvim_set_hl(0, "MasonError", { fg = "#ff5f5f", bold = true })
vim.api.nvim_set_hl(0, "MasonMuted", { fg = "#888888" })
vim.api.nvim_set_hl(0, "MasonMutedBlock", { fg = "#cccccc", bg = "#444444" })


vim.api.nvim_set_keymap('n', '<Leader>tt', ':lua toggleTransparency()<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "<leader>td", function()
    local line = vim.fn.getline(".")
    if line:match("%[ %]") then
        line = line:gsub("%[ %]", "[x]", 1)
    elseif line:match("%[x%]") then
        line = line:gsub("%[x%]", "[ ]", 1)
    end
    vim.fn.setline(".", line)
end, { desc = "Toggle checkbox" })
