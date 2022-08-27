-- plugin github link : [https://github.com/AckslD/nvim-neoclip.lua]
local status_ok , config = pcall(require, "neoclip")
if not status_ok then 
    return 
end


print("starting neoclip")
config.setup()
