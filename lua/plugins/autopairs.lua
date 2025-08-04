return {
    {
        'windwp/nvim-autopairs',
        config = function()
            local npairs = require('nvim-autopairs')

            npairs.setup({
                check_ts = true,
                enable_check_bracket_line = true,
                fast_wrap = {},
            })

            local ts_conds = require('nvim-autopairs.ts-conds')

            npairs.add_rules({
                Rule('<', '>')
                    :with_pair(ts_conds.is_html())
                    :with_move(ts_conds.is_end_of_line())
                    :with_del(function(opts)
                        if opts.char == '>' then
                            return true
                        end
                        return false
                    end)
            })
        end,
    },
}
