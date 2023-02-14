local bufferline = require("bufferline")

bufferline.setup({
  options = {
    indicator = {
      style = 'underline',
    },
    offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1, } },
  }
})

