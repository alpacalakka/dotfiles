require('mason').setup()
local lspconfig = require('lspconfig')

local servers = { 'lua_ls', 'pyright', 'tsserver', 'gopls' }
require('mason-lspconfig').setup { ensure_installed = servers }

local caps = require('cmp_nvim_lsp').default_capabilities()
for _, s in ipairs(servers) do
  lspconfig[s].setup { capabilities = caps }
end

