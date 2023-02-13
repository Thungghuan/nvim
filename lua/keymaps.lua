local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- all mode --
-- save buffer
keymap("", "<Leader>w", ":w<CR>", opts)

-- nvim-tree
keymap("", "<Leader>e", ":NvimTreeToggle<CR>", opts)
keymap("", "<Leader>f", ":NvimTreeFindFile<CR>", opts)

-- Move text up and down
keymap("", "<M-j>", "<ESC>:m .+1<CR>", opts)
keymap("", "<M-k>", "<ESC>:m .-2<CR>", opts)
keymap("", "∆", "<ESC>:m .+1<CR>", opts)
keymap("", "˚", "<ESC>:m .-2<CR>", opts)



-- NORMAL --
-- navigation between windows
keymap("n", "<Leader>h", "<C-w>h", opts)
keymap("n", "<Leader>j", "<C-w>j", opts)
keymap("n", "<Leader>k", "<C-w>k", opts)
keymap("n", "<Leader>l", "<C-w>l", opts)

-- navigation between buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- open toggleterm terminal
keymap("n", "<Leader>`", ":ToggleTerm<CR>", opts)



-- INSERT --
-- exit insert mode
keymap("i", "jj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)

-- move cursor at insert mode
keymap("i", "<C-a>", "<Home>", opts)
keymap("i", "<C-e>", "<End>", opts)
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-Enter>", "<ESC>o", opts)



-- COMMAND --
-- check command history
keymap("c", "<C-j>", "<Up>", {})
keymap("c", "<C-k>", "<Down>", {})

