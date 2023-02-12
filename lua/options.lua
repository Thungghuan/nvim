vim.cmd([[
  language en_US
]])

local opt = vim.opt

-- basic options
opt.number = true
opt.relativenumber = true
opt.whichwrap = "bs<>[]hl"
opt.virtualedit = "block,onemore"
opt.expandtab = true
opt.smartindent = true
opt.softtabstop = 2
opt.shiftwidth = 2
opt.ignorecase = true
opt.incsearch = true
opt.hlsearch = true
opt.cursorline = true
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.scrolloff = 8
opt.sidescrolloff = 8

-- lazy.nvim runtime path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
opt.rtp:prepend(lazypath)

-- which-key.nvim plugin
opt.timeout = true
opt.timeoutlen = 300
