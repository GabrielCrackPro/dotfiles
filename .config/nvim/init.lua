require('impatient') -- speedup startup
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
require("plugins.git")

require("plugins.indentblankline")
require("plugins.lspcolors")
require("plugins.treesitter")
require("plugins.dashboard")
require("plugins.telescope")
require("plugins.nvimnotify")
require("plugins.bufferline")
require("plugins.barbar")
require("plugins.spellsitter")
require("plugins.cheatsheet")
require("plugins.iconpicker")
require("plugins.lspsaga")
require("plugins.nullls")
require("plugins.transparent")
require("plugins.neotree")
require("plugins.symbolsoutline")
require("plugins.bettercomments")
require("plugins.mason")
require("plugins.surround")
require("plugins.hlargs")
require("plugins.ccc")

-- NOTE: completion config is in the plugins/plugins.lua file

vim.notify = require("notify") -- Change vim default notification

