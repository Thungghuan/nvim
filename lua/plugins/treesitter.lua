local treesitter = require("treesitter")

treesitter.setup({
  ensure_installed = "all",
  auto_install = true,
  hightlight = {
    enable = true,
  },
})

