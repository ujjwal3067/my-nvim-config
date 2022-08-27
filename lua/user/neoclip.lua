-- Plugin github link : [https://github.com/AckslD/nvim-neoclip.lua]
-- TODO: Setup is not complete
local status_ok , config = pcall(require, "neoclip")
if not status_ok then 
    return 
end

config.setup()
