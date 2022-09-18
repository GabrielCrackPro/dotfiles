require("base") -- Base config
require("maps") -- Keymaps
require("plugins.plugins") -- Plugin config
require("plugins.colorschemes") -- Themes and colorschemes
-- Set up plugins
require("plugins.luasnip")
require("plugins.lualine")
require("plugins.gitsigns")
require("plugins.whichkey")
require("plugins.autopairs")
require("plugins.lspkind")
require("plugins.colorizer")
require("plugins.trouble")
require("plugins.git")

require("plugins.indentblankline")
require("plugins.lspcolors")
require("plugins.treesitter")
require("plugins.dashboard")
require("plugins.telescope")
require("plugins.nvimnotify")
require("plugins.commentary")
require("plugins.bufferline")
require("plugins.regexplainer")
require("plugins.spellsitter")
require("plugins.cheatsheet")
require("plugins.iconpicker")
require("plugins.lspsaga")
require("plugins.nullls")
require("plugins.transparent")
require("plugins.barbar")
require("plugins.neotree")

-- NOTE: completion config is in the plugins/plugins.lua file

vim.notify = require("notify") -- Change vim default notification
vim.notify("Loading plugins...", "warn", {
  title = "Loading plugins...",
  timeout = 2000,
  on_open = function()
    local timer = vim.loop.new_timer()
    timer:start(3400, 0, function()
      vim.notify("Plugins loaded successfully", "info", {
        title = "Plugins loaded!",
      })
    end)
  end,
})
