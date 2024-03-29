-- plugin link : https://github.com/numToStr/Comment.nvim
local status_ok , comment = pcall(require, "Comment")
if not status_ok then 
    return 
end 

-- default mappings : 
-- NORMAL MODE : 
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
-- VISUAL MODE : 
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment
--
--
-- # Linewise
-- `gcw` - Toggle from the current cursor position to the next word
-- `gc$` - Toggle from the current cursor position to the end of line
-- `gc}` - Toggle until the next blank line
-- `gc5j` - Toggle 5 lines after the current cursor position
-- `gc8k` - Toggle 8 lines before the current cursor position
-- `gcip` - Toggle inside of paragraph
-- `gca}` - Toggle around curly brackets
--
-- # Blockwise
--
-- `gb2}` - Toggle until the 2 next blank line
-- `gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
-- `gbac` - Toggle comment around a class (w/ LSP/treesitter support)

-- DEFAULT CONFIG : adding here for reference
comment.setup(
{
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = '<leader>/', -- original 'gcc'
        ---Block-comment toggle keymap
        block = 'gbc', -- original 'gbc'
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = '<leader>/', -- original 'gc'
        ---Block-comment keymap
        block = 'gb', -- original 'gb'
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = 'gcO', -- original 'gcO'
        ---Add comment on the line below
        below = 'gco', -- original 'gco'
        ---Add comment at the end of line
        eol = 'gcA', -- original 'gcA'
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
        ---Extended mapping; `g>` `g<` `g>[count]{motion}` `g<[count]{motion}`
        extended = false,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})
