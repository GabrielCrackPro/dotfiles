local telescope = require("telescope")

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
