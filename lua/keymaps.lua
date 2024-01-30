local opts = { silent = true }
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gi', builtin.git_files, opts)
vim.keymap.set('n', '<leader>fi', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)

-- vim-fugitive
vim.keymap.set('n', '<leader>gs', ':Git<CR>', opts)
vim.keymap.set('n', '<leader>gj', ':diffget //3<CR>', opts)
vim.keymap.set('n', '<leader>gf', ':diffget //2<CR>', opts)
vim.keymap.set('n', '<leader>gk', ':Git commit<CR>', opts)
vim.keymap.set('n', '<leader>gvd', ':Gvdiffsplit!<CR>', opts)
vim.keymap.set('n', '<leader>P', ':Git pull --rebase<CR>', opts)
vim.keymap.set('n', '<leader>p', ':Git push -u origin ')

-- nvim-tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opts)

-- HopWord
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', opts)

-- harpoon
local hp_mark = require('harpoon.mark')
local hp_ui = require('harpoon.ui')
vim.keymap.set('n', '<leader>hf', hp_mark.add_file, opts)
vim.keymap.set('n', '<leader>hl', hp_ui.toggle_quick_menu, opts)
vim.keymap.set('n', '<leader>hk', hp_ui.nav_next, opts)
vim.keymap.set('n', '<leader>hj', hp_ui.nav_prev, opts)

-- Gitsigns
local gs = require('gitsigns')
vim.keymap.set('n', ']h', gs.next_hunk, opts)
vim.keymap.set('n', '[h', gs.prev_hunk, opts)
vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end, opts)
vim.keymap.set('n', '<leader>hd', gs.toggle_deleted, opts)

-- TreeSitter
local tsc = require('treesitter-context')
vim.keymap.set('n', ']c', function() tsc.go_to_context(vim.v.count1) end, opts)

-- Notify
-- dismiss
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', opts)

-- Custom
vim.keymap.set('n', 'K', ':m .-2<CR>==', opts)
vim.keymap.set('n', 'J', ':m .+1<CR>==', opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
