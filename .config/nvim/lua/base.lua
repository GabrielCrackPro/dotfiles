-- Remap leader key
vim.g.mapleader = " "

-- Set up nvim global settings
vim.opt.background = "dark" -- set background color
vim.opt.compatible = false -- use Vim settings, rather then Vi
vim.opt.encoding = "utf-8" -- set the character encoding to UTF-8
vim.opt.showmatch = true -- show match brackets
vim.opt.hlsearch = true -- highlights the string matched by the search
vim.opt.autoindent = true -- autoindent file on line breaks
vim.opt.expandtab = true -- convert tabs into spaces
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true -- show relative lines numbers
vim.opt.wrap = false -- disable word wrap
vim.opt.swapfile = false -- disable the creation of swapfiles
vim.opt.termguicolors = true -- enable terminal true colors
vim.opt.showmode = false -- don't show the mode
vim.opt.ignorecase = true -- make searching case insensitive
vim.opt.cursorline = true -- show line at cursor position
vim.opt.tabstop = 2 -- define tab spaces
vim.opt.softtabstop = 2 -- define spaces
vim.opt.shiftwidth = 2 -- define indent width
vim.opt.guifont = "MesloLGS\\ Nerd\\ Font\\"
vim.opt.syntax = "on" -- enable syntax
vim.opt.guicursor = "" -- disable default block cursor
vim.cmd("syntax enable") -- enable colorized syntax
