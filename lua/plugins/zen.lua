require("zen-mode").setup({
    window = {
        backdrop = 0.95,           -- Slight transparency for focus
        width = 120,               -- Fixed width for readability
        height = 1,                -- Full height
        options = {
            signcolumn = "no",     -- Hide sign column
            number = fale,         -- Hide line numbers
            relativenumber = true, -- Hide relative line numbers
            cursorline = false,    -- Hide cursor line
            cursorcolumn = false,  -- Hide cursor column
            foldcolumn = "0",      -- Hide fold column
            list = false,          -- Hide whitespace characters
        },
    },
    plugins = {
        options = { enabled = true, ruler = false, showcmd = false },
        twilight = { enabled = true },            -- Dim inactive portions
        gitsigns = { enabled = false },           -- Disable gitsigns in Zen mode
        tmux = { enabled = true },                -- Disable tmux statusline
        kitty = { enabled = false, font = "+4" }, -- No font size change
    },
    -- Callback for entering Zen mode
    on_open = function()
        vim.cmd("set wrap")      -- Enable line wrapping
        vim.cmd("set linebreak") -- Break lines at word boundaries
    end,
    -- Callback for leaving Zen mode
    on_close = function()
        vim.cmd("set nowrap") -- Disable line wrapping
    end,
})

vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { silent = true })
