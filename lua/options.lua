local set = vim.opt

set.number = true
set.relativenumber = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.mouse = ""

set.swapfile = false
set.backup = false
set.wrap = true

vim.cmd [[colorscheme dracula]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mkdp_auto_start = 1
vim.g.mkdp_refresh_slow = 1

vim.g.vim_jsx_pretty_colorful_config = 1

vim.notify = require('notify')

local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  vim.cmd.cd(data.file)
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
