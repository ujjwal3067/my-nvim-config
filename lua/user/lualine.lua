-- Install plugins setup
local status_ok , lualine = pcall(require, "lualine") 
if not status_ok then 
    return  -- end the sourcing of this file and exit without loading lualine on startup
end 


print("...Lualine initializing") 
require('lualine').setup({
    options = { 
        icons_enabled = true, 
        theme = 'auto', -- default : auto ( matche theme with the colorscheme ) custom : tokyonight 
    } 
})
