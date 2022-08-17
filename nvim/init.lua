require('settings')
require('maps')
require('plugins.plugins')
require('plugins.colorschemes')

-- Set up plugins 

require('plugins.lualine')
require('plugins.nerdtree')
require('plugins.gitsigns')
require('plugins.nnn')
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

-- highlight current line
vim.cmd([[
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#0a0a0a ctermbg=234
]])

-- NOTE: completion config is in the plugins/plugins.lua file
