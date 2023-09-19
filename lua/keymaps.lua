-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gi', builtin.git_files, { silent = true })
vim.keymap.set('n', '<leader>fi', builtin.find_files, { silent = true })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { silent = true })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { silent = true })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { silent = true })

-- vim-fugitive
vim.keymap.set('n', '<leader>gs', ':Git<CR>', { silent = true })
vim.keymap.set('n', '<leader>gj', ':diffget //3<CR>', { silent = true })
vim.keymap.set('n', '<leader>gf', ':diffget //2<CR>', { silent = true })
vim.keymap.set('n', '<leader>gk', ':Git commit<CR>', { silent = true })

-- nvim-tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })

-- HopWord
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', { silent = true })

-- harpoon
local hp_mark = require('harpoon.mark')
local hp_ui = require('harpoon.ui')
vim.keymap.set('n', '<leader>hf', hp_mark.add_file, { silent = true })
vim.keymap.set('n', '<leader>hl', hp_ui.toggle_quick_menu, { silent = true })
vim.keymap.set('n', '<leader>hk', hp_ui.nav_next, { silent = true })
vim.keymap.set('n', '<leader>hj', hp_ui.nav_prev, { silent = true })

-- Gitsigns
local gs = require('gitsigns')
vim.keymap.set('n', ']h', gs.next_hunk, { silent = true })
vim.keymap.set('n', '[h', gs.prev_hunk, { silent = true })
vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end, { silent = true })
vim.keymap.set('n', '<leader>hd', gs.toggle_deleted, { silent = true })

-- Custom
vim.keymap.set('n', 'K', ':m .-2<CR>==', { silent = true })
vim.keymap.set('n', 'J', ':m .+1<CR>==', { silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
