---@diagnostic disable: missing-fields
local notify = require("notify")

notify.setup({
  background_colour = "NotifyBackground",
  fps = 30,
  timeout = 500,
  level = 2,
  minimum_width = 50,
  top_down = true,
  render = "wrapped-compact",
  stages = "slide",
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = "",
  },
})
