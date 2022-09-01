local status_ok , lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    print("[ERROR] cannot load 'nvim-lsp-installer' plugin")
    return
end

-- NOTE :  missing : java ( update coming soon ... )
local servers = {
    "sumneko_lua",
    "tsserver",
    "pyright",
    "bashls",
    "jsonls",
    "yamlls",
    "rust_analyzer",
    "gopls",
    "marksman",
    "clangd",
    "dockerls",
}

lsp_installer.setup()

-- lsp config configs for various lsp servers.   
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}
for _, server in pairs(servers) do
  opts = {
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
  }

  if server == "sumneko_lua" then
    local sumneko_opts = require "user.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "user.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "tsserver" then 
    local tsserver_opts = require "user.lsp.settings.tsserver"
    opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
  end 

-- Get the default config from lspconfig for the "server" and call setup on it using opts values constructed above  
  lspconfig[server].setup(opts)
end


-- e.g. 
-- require('lspconfig')['pyright'].setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
-- }
--
-- require('lspconfig')['rust_analyzer'].setup{
--     on_attach = on_attach,
--     flags = lsp_flags,
--     -- Server-specific settings...
--     settings = {
--       ["rust-analyzer"] = {}
--     }
-- }
