return {
    {
        'windwp/nvim-autopairs',
        config = function()
            local npairs = require('nvim-autopairs')

            -- Set up nvim-autopairs with Treesitter
            npairs.setup({
                check_ts = true,                  -- Check treesitter for tags
                enable_check_bracket_line = true, -- Only check brackets in the same line
                fast_wrap = {},
            })

            -- Use nvim-autopairs with treesitter (for auto-closing HTML tags)
            local ts_conds = require('nvim-autopairs.ts-conds')

            -- Enable closing of HTML tags using treesitter
            npairs.add_rules({
                Rule('<', '>')                            -- Adds the rule for HTML tag auto-closing
                    :with_pair(ts_conds.is_html())        -- Check for HTML tags using treesitter
                    :with_move(ts_conds.is_end_of_line()) -- Move the cursor to the correct position
                    :with_del(function(opts)
                        -- Optional: Enable deleting tags
                        if opts.char == '>' then
                            return true
                        end
                        return false
                    end)
            })
        end,
    },
}
