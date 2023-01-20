local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local map = vim.keymap.set

map("n", "<leader>a", mark.add_file)
map("n", "<C-e>", ui.toggle_quick_menu)

map("n", "<C-1>", function() ui.nav_file(1) end)
map("n", "<C-2>", function() ui.nav_file(2) end)
map("n", "<C-3>", function() ui.nav_file(3) end)
map("n", "<C-4>", function() ui.nav_file(4) end)
