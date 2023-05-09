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
vim.keymap.set('n', '<leader>hf', require('harpoon.mark').add_file, { silent = true })
vim.keymap.set('n', '<leader>hl', require('harpoon.ui').toggle_quick_menu, { silent = true })
