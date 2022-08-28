
local status_ok , bufferline = pcall(require, "bufferline")
if not status_ok then 
    return 
end


-- borrowed from : https://github.com/LunarVim/nvim-basic-ide/blob/master/lua/user/bufferline.lua#L9
bufferline.setup() -- no custom config

-- key maps
-- NOTE : <right> = right arrow key and <left> = left arrow key
vim.keymap.set({'n', 'x', 'i'},'<right>', ':BufferLineCycleNext<cr>')  -- cycle left to right
vim.keymap.set({'n', 'x', 'i'},'<left>', ':BufferLineCyclePrev<cr>')   -- cycle right to left
