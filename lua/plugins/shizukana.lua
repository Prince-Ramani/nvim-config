require("shizukana").setup({
    style = "moon",         -- "moon" | "dawn" | "dusk"
    transparent = true,     -- Transparent background
    terminal_colors = true, -- Set terminal colors
    transparent_plugins = {
        telescope = true
    },

    dim_inactive = {
        enabled = false,   -- Dim inactive windows
        shade = "dark",
        percentage = 0.12, -- 12% darker
    },

    styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = {},
        variables = {},
        operators = {},
        conditionals = { italic = true },
    },

    plugins = {
        auto_detect = true, -- Auto-detect installed plugins
        telescope = true,
        nvim_tree = true,
        lualine = true,
        treesitter = true,
        lsp = true,
        cmp = true,
        gitsigns = true,
        indent_blankline = true,
    },

    on_colors = function(colors)
    end,

    on_highlights = function(highlights, colors)
    end,
})
