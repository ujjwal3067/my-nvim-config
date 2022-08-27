local status_ok , configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then 
    return 
end
 
configs.setup({
    ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = {""}, --  List of parser to ignore installing
    highlight = { 
        enable = true , -- false will disable the whole extension
    }, 
    autopairs = { 
        enable = true, 
    }, 
    indent = {
        enable  = true, 
        disable = { "python"},  -- disabling for python because it causes some annoying issue with indentation  + smartindent enable in neovim.   
    } 
})
