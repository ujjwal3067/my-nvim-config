-- contains generic keymappings keybindings
-- for plugin specific mapping see <plugin>.lua files
vim.g.mapleader=' ' -- leader key (  NOTE : never use <space> to set leader key : it won't work)
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc='Save'})                       -- :w to <leader>w   
vim.keymap.set('n', '<leader>q', '<cmd>:wq<cr>', {desc='Save + Quit'})                  -- :wq to <leader>q
vim.keymap.set('i', 'jk', '<Esc>', {})

--vim.keymap.set('n', '<leader>h', '<cmd>:noh<cr>', {})                                   -- remove highlighted result similar to :noh command in command bar

-- clipboard mapping
vim.keymap.set({'n', 'x'},'cp', '"+y') -- copy to clipboard
vim.keymap.set({'n', 'x'},'cv', '"+p') -- copy from clipboard









