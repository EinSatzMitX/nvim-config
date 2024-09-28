vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- create new tab
map('n', 'T', ':tabnew<CR>', opts)

-- Go to next tab
map('n', 'Z', ':tabnext<CR>', opts)

-- Close current tab
map('n', 'R', ':tabclose<CR>', opts)

-- Close all other tabs
map('n', 'U', ':tabonly<CR>', opts)

-- Create new tab with terminal open
map('n', '<leader>t', ':tabnew | terminal<CR>', opts)

-- Keybinding to exit terminal mode
vim.keymap.set('t', '<leader><Esc>', '<C-\\><C-n>', opts)

-- also see plugin_config/clipboard.lua

-- Set up keybinding for MarkdownPreviewToggle
vim.api.nvim_set_keymap('n', '<leader>m', ':MarkdownPreviewToggle<CR>', { noremap = true, silent = true })

map('n', '<leader>x', ':HexToggle<CR>', {noremap = true, silent = true})
