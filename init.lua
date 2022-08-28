-- custom vim configuration 
require("user.plugin")      -- sourcing packer the package manager
require("user.set")         -- this file contains general default setting for neovim
require("user.keymap")      -- this file contains custom keymaps
require("user.color")       -- everything related to colorscheme  
require("user.lualine")     -- lualine config ( status line for vim  ) 
require("user.treesitter")  -- treesitter config
require("user.telescope")   -- telescope config
require("user.neoclip")     -- clipboard manager for neovim ( history of register as well )   
require("user.bufferline")  -- custom neovim bufferline ( aka. tab bar ) 
require("user.comment")     -- better commenting
require("user.autopair")    -- auto pairing for better editing
require("user.startup")     -- custom startup screen + optimization  



-- NOTE : remove it when done with telescope configuration 
vim.g.netrw_banner=0
vim.g.netrw_winsize=30
