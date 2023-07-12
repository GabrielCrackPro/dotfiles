local rainbow_delimiters = require "rainbow-delimiters"
local options = {
  ensure_installed = { "lua", "tsx", "json", "css", "html", "ts" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

vim.g.rainbow_delimiters = {
  strategy = {
    [""] = rainbow_delimiters.strategy["global"],
    vim = rainbow_delimiters.strategy["local"],
  },
  query = {
    [""] = "rainbow-delimiters",
    lua = "rainbow-blocks",
  },
  highlight = {
    "RainbowDelimiterRed",
    "RainbowDelimiterYellow",
    "RainbowDelimiterBlue",
    "RainbowDelimiterOrange",
    "RainbowDelimiterGreen",
    "RainbowDelimiterViolet",
    "RainbowDelimiterCyan",
  },
}

return options
