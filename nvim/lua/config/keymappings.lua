local km = vim.keymap

--- Leader mappings
km.set('n', '<leader>x', ':Rexplore<enter>', { noremap = true })
km.set('n', '<leader>n', '<cmd>nohlsearch<enter>', { noremap = true })
km.set('n', '<leader>b', ':ls<enter>:b ', { noremap = true })
km.set('n', '<leader>s', ':%s/', { noremap = true})

--- LSP mappings
km.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP hover', noremap = true })
km.set('n', '<leader>cw', vim.diagnostic.open_float, { desc = 'LSP line diagnostics', noremap = true })
km.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP code action', noremap = true })
km.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = 'LSP definition', noremap = true })
km.set('n', '<leader>cr', vim.lsp.buf.references, { desc = 'LSP references', noremap = true })
km.set('n', '<leader>cq', vim.lsp.buf.rename, { desc = 'LSP rename', noremap = true })

--- Other mappings
km.set('n', 'k', 'gk', { noremap = true })
km.set('n', 'j', 'gj', { noremap = true })
km.set('n', '<esc>n', 'nzz', { noremap = true })
km.set('n', '<esc>N', 'Nzz', { noremap = true })
km.set('n', '[q', ':cprevious<enter>', { noremap = true })
km.set('n', ']q', ':cnext<enter>', { noremap = true })
km.set('n', '<esc>e', '5<C-e>', { noremap = true })
km.set('n', '<esc>y', '5<C-y>', { noremap = true })
km.set('n', '<tab>', '<C-w>w', { noremap = true })
km.set('n', '<S-tab>', '<C-w>W', { noremap = true })
km.set('n', '<C-f>', ':Explore<enter>', { noremap = true })

--- Plugin mappings
-- Telescope
local telescope = require('telescope.builtin')
km.set('n', '<leader>T', ':Telescope ', { noremap = true })
km.set('n', '<leader>tf', telescope.find_files, { noremap = true, desc = 'Telescope find files' })
km.set('n', '<leader>tg', telescope.live_grep, { noremap = true, desc = 'Telescope live grep' })
km.set('n', '<leader>tb', telescope.buffers, { noremap = true, desc = 'Telescope buffers' })
km.set('n', '<leader>tz', telescope.current_buffer_fuzzy_find, { noremap = true, desc = 'Telescope help tags' })
