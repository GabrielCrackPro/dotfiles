local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

treesitter.setup({
  auto_install = true,
  ignore_install = {},
  ensure_installed = {
    "typescript",
    "tsx",
    "html",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
})
