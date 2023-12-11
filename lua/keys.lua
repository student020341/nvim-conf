-- telescope
local teleb = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", teleb.find_files, {})
vim.keymap.set("n", "<leader>fg", teleb.live_grep, {})
vim.keymap.set("n", "<leader>fb", teleb.buffers, {})
vim.keymap.set("n", "<leader>fh", teleb.help_tags, {})

-- lspconfig
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

-- etc
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, {})
vim.api.nvim_set_keymap("n", "<space>", "<nop>", { noremap = true, silent = true })
