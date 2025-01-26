local present, telescope = pcall(require, "telescope")

if not present then
  return
end

telescope.setup({
  defaults = {
    wrap_results = true,
    layout_strategy = "horizontal",
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    },
  },
  pickers = {
    find_flies = {
      theme = "dropdown",
    },
  },
})
