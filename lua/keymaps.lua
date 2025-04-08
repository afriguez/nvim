local opts = { silent = true }
-- lsp & diagnostic
vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', '<leader>gp', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opts)
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>gi', builtin.git_files, opts)
vim.keymap.set('n', '<leader>fi', function() builtin.find_files({ hidden = true }) end, opts)
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

-- Oil
vim.keymap.set('n', '<C-n>', '<CMD>Oil<CR>', opts)

-- HopWord
vim.keymap.set('n', '<leader>hw', ':HopWord<CR>', opts)

-- harpoon
local hp = require('harpoon')
vim.keymap.set('n', '<leader>hf', function() hp:list():add() end, opts)
vim.keymap.set('n', '<leader>hl', function() hp.ui:toggle_quick_menu(hp:list()) end, opts)

vim.keymap.set('n', '<C-h>', function() hp:list():select(1) end, opts)
vim.keymap.set('n', '<C-j>', function() hp:list():select(2) end, opts)
vim.keymap.set('n', '<C-k>', function() hp:list():select(3) end, opts)
vim.keymap.set('n', '<C-l>', function() hp:list():select(4) end, opts)

vim.keymap.set("n", "<leader>hk", function() hp:list():prev() end)
vim.keymap.set("n", "<leader>hj", function() hp:list():next() end)

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

-- Global Note
local gn = require('global-note')
vim.keymap.set('n', '<leader>gn', function() gn.toggle_note() end, opts)

-- Custom
vim.keymap.set('n', 'K', ':m .-2<CR>==', opts)
vim.keymap.set('n', 'J', ':m .+1<CR>==', opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
