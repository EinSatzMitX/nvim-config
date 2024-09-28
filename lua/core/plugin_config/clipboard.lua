-- Copy to clipboard in normal mode
vim.api.nvim_set_keymap('n', '<leader>y', '"+yy', { noremap = true, silent = true })
-- Copy to clipboard in visual mode
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })
-- Paste from clipboard in normal mode
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })
-- Paste from clipboard in insert mode
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })
