local bufferline = require("bufferline")

bufferline.setup({
  options = {
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' },
    },
    indicator = {
      style = 'underline',
    },
    offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1, } },
  }
})

