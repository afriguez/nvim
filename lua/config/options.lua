local set = vim.opt
local opts = { silent = true }

set.number = true
set.relativenumber = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.mouse = ""
set.colorcolumn = "80"

set.swapfile = false
set.backup = false
set.wrap = true

set.list = true
set.listchars:append "space:⋅"
set.listchars:append "eol:↴"

set.laststatus = 3

set.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
