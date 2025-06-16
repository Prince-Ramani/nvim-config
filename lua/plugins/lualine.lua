
require('lualine').setup {
    options = {
        theme = '16color',                 -- Change to any theme you prefer
        section_separators = { '', '' },   -- Remove section separators
        component_separators = { '', '' }, -- Remove component separators
    },
    sections = {
        lualine_a = { 'mode' },                               -- Show the current mode (e.g., Normal, Insert)
        lualine_b = { 'branch' },                             -- Show the current Git branch
        lualine_c = { 'filename' },                           -- Show the current file's name
        lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Show file encoding, format, and type
        lualine_y = { 'progress' },                           -- Show progress (line/column)
        lualine_z = { 'location' },                           -- Show the cursor's current position (line, column)
    },
    extensions = { 'fugitive' }                               -- Add git integration
}

