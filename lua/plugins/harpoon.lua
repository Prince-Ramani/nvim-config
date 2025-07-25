local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>m", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)

vim.keymap.set("i", "<A-1>", function() harpoon:list():select(1) end)
vim.keymap.set("i", "<A-2>", function() harpoon:list():select(2) end)
vim.keymap.set("i", "<A-3>", function() harpoon:list():select(3) end)
vim.keymap.set("i", "<A-4>", function() harpoon:list():select(4) end)



vim.keymap.set("n", "<C-[>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-]>", function() harpoon:list():next() end)

vim.keymap.set("i", "<C-[>", function() harpoon:list():prev() end)
vim.keymap.set("i", "<C-]>", function() harpoon:list():next() end)
