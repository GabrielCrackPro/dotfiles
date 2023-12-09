---@diagnostic disable: missing-fields
local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  auto_install = true,
  ignore_install = {},
  ensure_installed = {
    "typescript",
    "tsx",
    "html",
  },
})
