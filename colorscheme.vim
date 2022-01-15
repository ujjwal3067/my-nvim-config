
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark

"colorscheme iceberg 
"colorscheme nord



"###########GRUVBOX colorcsheme
" let g:gruvbox_italic=1

" let g:gruvbox_bold=0
" let g:gruvbox_underline=1
" let g:gruvbox_undercurl=1
" let g:gruvbox_italicize_comments=1
" let g:gruvbox_italicize_strings=1
" let g:gruvbox_invert_selection=0
" let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox

" " kanagawa ( mix of gruvbox and tokyonight )

lua << EOF 
-- Default options:
require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "bold",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords 
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    colors = {},
    overrides = {},
})

-- setup must be called before loading
local default_colors = require("kanagawa.colors").setup()

-- this will affect all the hl-groups where the redefined colors are used
local my_colors = {
    -- use the palette color name...
    --sumiInk1 = "black",
    --fujiWhite = "#FFFFFF",
    -- ...or the theme name
    --bg = "#272727",
    -- you can also define new colors if you want
    -- this will be accessible from require("kanagawa.colors").setup()
    -- AFTER calling require("kanagawa").setup(config)
    --new_color = "teal"
}

--local overrides = {
    -- create a new hl-group using default palette colors and/or new ones
    --MyHlGroup1 = { fg = default_colors.waveRed, bg = "#AAAAAA", style="underline,bold", guisp="blue" },

    -- override existing hl-groups, the new keywords are merged with existing ones
    --VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
    --TSError    = { link = "Error" },
    --TSKeywordOperator = { style = 'bold'},
    --StatusLine = { fg = my_colors.new_color }
--}

--require'kanagawa'.setup({ overrides = overrides, colors = my_colors })
vim.cmd("colorscheme kanagawa")
EOF 

" colorscheme kanagawa



" VimScript
" let g:github_comment_style = "italic"
" let g:github_keyword_style = "italic"
" let g:github_function_style = "italic"
" let g:github_variable_style = "italic"

"colorscheme github_dark_default

"colorscheme znake

"highligh scheme for errors
"hi LspDiagnosticsVirtualTextError guifg=red gui=bold,italic,underline
" hi LspDiagnosticsVirtualTextError guifg=#9e0303 gui=bold,italic,underline
" hi LspDiagnosticsVirtualTextWarning guifg=orange gui=italic,underline
" hi LspDiagnosticsVirtualTextInformation guifg=yellow gui=italic,underline
" hi LspDiagnosticsVirtualTextHint guifg=yellow gui=italic,underline

"highlight search colorscheme


