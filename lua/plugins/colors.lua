local current_theme = "rose-pine-moon"
local themes = {
    "rose-pine-moon",
    "catppuccin-latte"
}

local theme_index = 1

local function SwitchTheme()
    vim.ui.select(themes, {
        prompt = "Select a Theme",
        format_item = function(theme)
            return theme
        end
    }, function(selected_theme)
        if selected_theme then
            vim.cmd("colorscheme " .. selected_theme)
            current_theme = selected_theme
            print("Switched to theme: " .. selected_theme)

            -- vim.cmd [[
            --     hi StatusLine guifg=#767676 guibg=#071623 guisp=#ff5f00
            --     hi StatusLineNC guifg=#767676 guibg=#071623 guisp=#ff0000
            -- ]]
        else
            print("No theme selected.")
        end
    end)
end

vim.keymap.set("n", "<leader>ct", SwitchTheme, { desc = "Switch Color Theme" })

-- hi StatusLineNC guifg=#abb2bf guibg=#071623 guisp=#ff0000
