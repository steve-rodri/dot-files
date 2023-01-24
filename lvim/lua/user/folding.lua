-- Tell the server the capability of foldingRange,
-- Neovim hasn't added foldingRange to default capabilities, users must add it manually

local capabilities = require("lvim.lsp").common_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}

local language_servers = { "jsonls", "sumneko_lua", "tsserver" } -- like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
  require('lvim.lsp.config')[ls].setup({
    capabilities = capabilities,
    other_fields = ...
  })
end
require('ufo').setup()
