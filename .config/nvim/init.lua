require('base')
require('maps')
require('plugins.plugins')
require('plugins.colorschemes')

-- Set up plugins 

require('plugins.lualine')
require('plugins.nerdtree')
require('plugins.gitsigns')
require('plugins.whichkey')
require('plugins.autopairs')
require('plugins.lspkind')
require('plugins.colorizer')
require('plugins.trouble')
require('plugins.git')
require('plugins.indentblankline')
require('plugins.lspcolors')
require('plugins.treesitter')
require('plugins.dashboard')
require('plugins.telescope')
require('plugins.nvimnotify')
require('plugins.commentary')
require('plugins.bufferline')
require('plugins.regexplainer')
require('plugins.spellsitter')
require('plugins.cheatsheet')
require('plugins.iconpicker')
require('plugins.lspsaga')

vim.notify = require('notify') -- Change vim default notification

vim.notify('All plugins loaded successfully', 'info', {
  title = 'Plugins loaded'
})

-- NOTE: completion config is in the plugins/plugins.lua file
