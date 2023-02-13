local toggleterm = require("toggleterm")

toggleterm.setup({
  direction = 'float',
})

function set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jj', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'kk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'kj', [[<C-\><C-n>]], opts)
end

vim.api.nvim_create_autocmd({ "TermOpen" }, {
  pattern = { "term://*" },
  callback = set_terminal_keymaps,
})

