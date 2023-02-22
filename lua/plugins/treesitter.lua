local treesitter = require("nvim-treesitter.configs")

local ensure_languages = {
  "bash",
  "c",
  "javascript",
  "json", 
  "lua",
  "python",
  "typescript",
  "vue",
  "tsx",
  "css",
  "rust",
  "yaml",
  "markdown",
  "markdown_inline"
}


treesitter.setup({
  ensure_installed = ensure_languages,
  auto_install = true,
  highlight = {
    enable = true,
  },
})

