local map = vim.keymap.set
local opts = { silent = true }

vim.g.mapleader = " "

map("n", "j", "gj")
map("n", "k", "gk")

-- Better escape using jk in insert and terminal mode
map("i", "jk", "<ESC>")
map("t", "jk", "<C-\\><C-n>")

map("n", "<Leader>w", "<C-w>")

-- Move lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Resizing panes
map("n", "<C-Up>", "<cmd>resize -2<CR>")
map("n", "<C-Down>", "<cmd>resize +2<CR>")
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- hjkl navigation in insert mode
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

-- Join lines without moving the curser to the end
map("n", "J", "mzJ`z")

-- Half page jumping and curser stays in the middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Search stays in the middle
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Replace a word with yanked text
map("x", "<leader>p", [["_dP]])

-- Deleting to void registry
map({ "n", "v" }, "<leader>d", [["_d]])

-- terminal
map({ "n", "t" }, "<leader>t", "<Cmd>ToggleTerm<CR>")
map({ "n", "t" }, "<C-t>", "<Cmd>ToggleTerm<CR>")
