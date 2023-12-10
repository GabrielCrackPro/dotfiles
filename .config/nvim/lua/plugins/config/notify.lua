local present, notify = pcall(require, "notify")

if not present then
  return
end

notify.setup({
  background_colour = "NotifyBackground",
  fps = 30,
  timeout = 700,
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
