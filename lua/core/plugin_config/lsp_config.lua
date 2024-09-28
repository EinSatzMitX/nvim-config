require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "asm_lsp" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()



require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- lsp-config.lua or within your init.lua
local nvim_lsp = require('lspconfig')
-- Setup rust-analyzer
nvim_lsp.rust_analyzer.setup({
    on_attach = function(client, bufnr)
        -- Add your custom on_attach code here, such as key mappings
    end,
    settings = {
        ["rust-analyzer"] = {}
    }
})

local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
}

-- asm-lsp for Assembly
nvim_lsp.asm_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
