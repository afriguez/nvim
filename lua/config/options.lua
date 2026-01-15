local set = vim.opt

set.number = true
set.relativenumber = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.mouse = ""
set.colorcolumn = "80"

set.swapfile = false
set.backup = false

set.wrap = true
local group = vim.api.nvim_create_augroup("MarkdownSettings", { clear = true })

set.list = true
set.listchars:append "space:⋅"
set.listchars:append "eol:↴"
set.listchars:append "tab:▍⋅"

-- Spell
set.spell = false
set.spelllang = { 'en', 'es', 'cjk' }
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit" },
  command = "setlocal spell",
})

set.laststatus = 3

set.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Hostname
vim.g.hostname = vim.loop.os_gethostname()
vim.g.afriguez = "marija"
vim.g.adrephos = "vin"

if vim.g.hostname ~= vim.g.afriguez then
  vim.api.nvim_create_autocmd("BufWinEnter", {
    group = group,
    pattern = "*.md",
    callback = function()
      vim.opt_local.textwidth = 80
      vim.opt_local.wrap = false
    end,
  })
end
