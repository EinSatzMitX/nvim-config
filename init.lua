require("core.keymaps")
require("core.plugins")
require("core.plugin_config")
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.clangd.setup{}
require('lspconfig').rust_analyzer.setup{}
require'lspconfig'.asm_lsp.setup{}

local servers = { 'clangd' , 'rust-analyzer'}

if vim.fn.executable('xclip') == 1 then
    vim.g.clipboard = {
        name = 'xclip',
        copy = {
            ['+'] = 'xclip -selection clipboard',
            ['*'] = 'xclip -selection primary',
        },
        paste = {
            ['+'] = 'xclip -selection clipboard -o',
            ['*'] = 'xclip -selection primary -o',
        },
        cache_enabled = 0,
    }
end

