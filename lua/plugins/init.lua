-- use lazy.nvim as plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    [[ lazypath, ]]
  })
end

require("lazy").setup(
  {
    { "folke/tokyonight.nvim" },
    { "goolord/alpha-nvim" },

    { "windwp/nvim-autopairs" },
    { "numToStr/Comment.nvim" },
    { "folke/which-key.nvim" },
    { "nvim-tree/nvim-tree.lua" },
    { "nvim-tree/nvim-web-devicons" },
    { "akinsho/bufferline.nvim" },
    { "nvim-lualine/lualine.nvim" },
    { "lewis6991/gitsigns.nvim" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    { "akinsho/toggleterm.nvim" },
  },
  {
    install = { colorscheme = { "tokyonight" } },
  }
)

require "plugins.autopairs"
require "plugins.comment"
require "plugins.nvim-tree"
require "plugins.bufferline"
require "plugins.gitsigns"
require "plugins.lualine"
require "plugins.toggleterm"
require "plugins.alpha"
require "plugins.treesitter"

