--- nvim-lspconfig ---
local lspconfig = require('lspconfig')

-- C++ --
lspconfig.clangd.setup {
}

-- Rust --
lspconfig.rust_analyzer.setup {
}

--- Old
-- local autocmd = vim.api.nvim_create_autocmd
-- autocmd("FileType", {
--     pattern = { 'cpp', 'h' },
--     callback = function()
--         local root_dir = vim.fs.dirname(
--             vim.fs.find('.git', { upward = true })[1]
--         )
--         local client = vim.lsp.start({
--             name = 'clangd',
--             cmd = { 'clangd' },
--             root_dir = root_dir,
--         })
--         vim.lsp.buf_attach_client(0, client)
--     end
-- })

