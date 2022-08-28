-- -- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Silent keymap option ( message will not be displayed in command history )
local opts = { silent = true }


-- contains generic keymappings keybindings
vim.g.mapleader=' ' -- leader key (  NOTE : never use <space> to set leader key : it won't work)
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc='Save'})                       -- :w to <leader>w   
vim.keymap.set('n', '<leader>q', '<cmd>:wq<cr>', {desc='Save + Quit'})                  -- :wq to <leader>q
vim.keymap.set('i', 'jk', '<Esc>', {})

-- clear highlights ( NOTE: not setting this because <Space>h* is used for Gitsings hunk related mappings    )
--vim.keymap.set('n', '<leader>h', '<cmd>:noh<cr>', {})  

-- clipboard mapping
vim.keymap.set({'n', 'x'},'cp', '"+y', opts) -- copy to clipboard
vim.keymap.set({'n', 'x'},'cv', '"+p', opts) -- copy from clipboard



-- nvim-tree
vim.keymap.set({'n', 'x'},'<leader>,', ':NvimTreeToggle<CR>', opts) -- toggle 



--  Navigate buffer ( bufferline )
-- NOTE : <right> = right arrow key and <left> = left arrow key
vim.keymap.set({'n', 'x', 'i'},'<right>', ':BufferLineCycleNext<cr>', opts)  -- cycle left to right
vim.keymap.set({'n', 'x', 'i'},'<left>', ':BufferLineCyclePrev<cr>', opts)   -- cycle right to left
vim.keymap.set("n", "<S-q>", ":bd<CR>", opts)                      -- close current buffer
