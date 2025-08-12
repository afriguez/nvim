local set = vim.opt

set.number = true
set.relativenumber = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
--set.expandtab = true
set.mouse = ""
set.colorcolumn = "80"

set.swapfile = false
set.backup = false
set.wrap = true

set.list = true
set.listchars:append "space:⋅"
set.listchars:append "eol:↴"

set.laststatus = 3

vim.cmd [[colorscheme vesper]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mkdp_auto_start = 1
vim.g.mkdp_refresh_slow = 1

vim.g.vim_jsx_pretty_colorful_config = 1

vim.notify = require('notify')

vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.g.Hexokinase_highlighters = {'backgroundfull'}
