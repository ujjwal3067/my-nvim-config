local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("[ERROR] cannot load 'lspconfig' plugin")
  return
end

 
require("user.lsp.lsp-installer") -- responsible for installing language server for the language specified in the config 
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
