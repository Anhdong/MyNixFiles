vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true })
end

-- files / general
map("n", "<leader>cd", vim.cmd.Ex, "Open netrw file explorer")
map({ "n", "i" }, "<C-s>", "<cmd>write<CR><Esc>", "Save file")
map("n", "<leader>q", "<cmd>quit<CR>", "Quit window")
map("n", "<leader>Q", "<cmd>qa<CR>", "Quit all")
map("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlight")

-- windows
map("n", "<C-h>", "<C-w>h", "Go to left window")
map("n", "<C-j>", "<C-w>j", "Go to lower window")
map("n", "<C-k>", "<C-w>k", "Go to upper window")
map("n", "<C-l>", "<C-w>l", "Go to right window")
map("n", "<leader>wv", "<cmd>vsplit<CR>", "Split vertically")
map("n", "<leader>wh", "<cmd>split<CR>", "Split horizontally")
map("n", "<leader>wc", "<C-w>c", "Close window")
map("n", "<leader>w=", "<C-w>=", "Equalize window sizes")

-- buffers
map("n", "<S-l>", "<cmd>bnext<CR>", "Next buffer")
map("n", "<S-h>", "<cmd>bprevious<CR>", "Previous buffer")
map("n", "<leader>bd", "<cmd>bdelete<CR>", "Delete buffer")
map("n", "<leader>bb", "<cmd>b#<CR>", "Switch to last buffer")

-- editing
map("v", "<", "<gv", "Indent left, keep selection")
map("v", ">", ">gv", "Indent right, keep selection")
map("v", "J", ":m '>+1<CR>gv=gv", "Move selection down")
map("v", "K", ":m '<-2<CR>gv=gv", "Move selection up")
map("x", "<leader>p", [["_dP]], "Paste without overwriting register")
map({ "n", "v" }, "<leader>d", [["_d]], "Delete without yanking")
map("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace word under cursor")
map("n", "<leader>a", "ggVG", "Select all")

-- navigation
map("n", "<C-d>", "<C-d>zz", "Scroll down, keep cursor centered")
map("n", "<C-u>", "<C-u>zz", "Scroll up, keep cursor centered")
map("n", "n", "nzzzv", "Next search result, centered")
map("n", "N", "Nzzzv", "Previous search result, centered")

-- diagnostics
map("n", "<leader>e", vim.diagnostic.open_float, "Show diagnostic")
map("n", "<leader>xl", vim.diagnostic.setloclist, "Diagnostics list")

-- tools
map("n", "<leader>L", "<cmd>Lazy<CR>", "Open Lazy")
map("n", "<leader>M", "<cmd>Mason<CR>", "Open Mason")

-- terminal
map("t", "<Esc><Esc>", [[<C-\><C-n>]], "Exit terminal mode")
map("n", "<leader>tt", "<cmd>split | terminal<CR>", "Open terminal")
