local g = vim.g
local o = vim.opt

--- Appearance

--- Experimental
o.scrolloff = 0
o.autochdir = true
o.autoread = true

--- Line numbers
o.number = true
o.relativenumber = true

--- Tab config
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

--- Search settings
o.ignorecase = true
o.smartcase = true
o.incsearch = true

--- Set leaders
g.mapleader = "\\"
g.maplocalleader = " "

--- Colorscheme
vim.cmd('colorscheme retrobox')

--- Windowing
o.splitbelow = true
o.splitright = true
o.incsearch = true
