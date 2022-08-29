local status_ok , _ = pcall(require, "lspconfig")
if not staus_ok then 
    return 
end
 
require("user.lsp.lsp-installer") -- responsible for installing language server for the language specified in the config 
require("user.lsp.handlers").setup()
