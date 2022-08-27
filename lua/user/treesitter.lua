-- Keep treesitter config simple because it will get complex and hard to maintain 
local status_ok , configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then 
    return 
end
 
configs.setup({
    ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = {""}, --  List of parser to ignore installing
    highlight = { 
        enable = true , -- false will disable the whole extension
        additional_vim_regex_highlighting = false, -- keep it false for better performance 
    }, 
    autopairs = { 
        enable = true, 
    }, 
    indent = {
        enable  = true, 
        disable = { "python"},  -- disabling for python because it causes some annoying issue with indentation  + smartindent enable in neovim.   
    } 
})
