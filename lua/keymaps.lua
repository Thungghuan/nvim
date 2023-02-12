local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- all mode --
-- save buffer
keymap("", "<Leader>w", ":w<CR>", {})

-- nvim-tree
keymap("", "<Leader>e", ":NvimTreeToggle<CR>", {})
keymap("", "<Leader>f", ":NvimTreeFindFile<CR>", {})



-- NORMAL --
-- navigation between windows
keymap("n", "<Leader>h", "<C-w>h", opts)
keymap("n", "<Leader>j", "<C-w>j", opts)
keymap("n", "<Leader>k", "<C-w>k", opts)
keymap("n", "<Leader>l", "<C-w>l", opts)



-- INSERT --
-- exit insert mode
keymap("i", "jj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)



-- COMMAND --
-- check command history
keymap("c", "<C-j>", "<Up>", {})
keymap("c", "<C-k>", "<Down>", {})

