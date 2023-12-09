
-- telescope
local teleb = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', teleb.find_files, {})
vim.keymap.set('n', '<leader>fg', teleb.live_grep, {})
vim.keymap.set('n', '<leader>fb', teleb.buffers, {})
vim.keymap.set('n', '<leader>fh', teleb.help_tags, {})

-- etc
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, {})

