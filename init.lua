-- custom vim configuration 
require("user.set")         -- this file contains general default setting for neovim
require("user.keymap")      -- this file contains custom keymaps
require("user.plugin")      -- sourcing packer the package manager
require("user.color")       -- everything related to colorscheme  
require("user.lualine")     -- lualine config ( status line for vim  ) 
require("user.telescope")   -- telescope config


-- NOTE : remove it when done with telescope configuration 
vim.g.netrw_banner=0
vim.g.netrw_winsize=30
