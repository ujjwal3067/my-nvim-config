local status_ok , npairs = pcall(require, "nvim-autopairs")
if not status_ok then 
    return 
end 

npairs.setup({
    check_ts = true, -- treesitter integration 
    disable_filetype = {"TelescopePrompt"}, 
    -- if next character is a close pair and it doesn't have an open pair in same line, then it will not add a close pair
    enable_check_bracket_line = true, 
})


-- TODO : uncomment these configuration after installing nvim-cmp plugin
-- If you want insert `(` after select function or method item
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )
 
