require('onedarkpro').setup({
    theme = "onedark_dark",
    plugins = {
        all = true
    },
    styles = {
      comments = "italic",
      keywords = "bold,italic"
  },
  hlgroups = {
    Comment = { fg = '#D45FDE', bg = '#000' }
  },
    options = {
        bold = true,
        underline = true,
        cursorline = true
    }
})

vim.cmd('colorscheme onedarkpro')
