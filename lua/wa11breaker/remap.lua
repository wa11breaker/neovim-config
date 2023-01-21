local map = vim.keymap.set
local opts = { silent = true }

-- Set space as leader
vim.g.mapleader = " "

-- Map
map("n", "<Leader>w", "<C-w>")

-- Better up/down
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Better escape using jk in insert and terminal mode
map("i", "jk", "<ESC>")
map("t", "jk", "<C-\\><C-n>")

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

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

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

-- Terminal
map({ "n", "t" }, "<leader>t", "<Cmd>ToggleTerm<CR>")
map({ "n", "t" }, "<C-t>", "<Cmd>ToggleTerm<CR>")

-- Tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
map("n", "<leader><tab>q", "<cmd>tabclose<cr>", { desc = "Close Tab" })
