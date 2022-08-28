
local status_ok , bufferline = pcall(require, "bufferline")
if not status_ok then 
    return 
end


-- borrowed from : https://github.com/LunarVim/nvim-basic-ide/blob/master/lua/user/bufferline.lua#L9
bufferline.setup() -- no custom config

