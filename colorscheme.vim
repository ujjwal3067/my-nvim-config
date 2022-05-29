if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif


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

"kanagawa ( mix of gruvbox and tokyonight )

"  lua << EOF 
"  -- Default options:
"  require('kanagawa').setup({
"      undercurl = true,           -- enable undercurls
"      commentStyle = "italic",
"      functionStyle = "bold",
"      keywordStyle = "italic",
"      statementStyle = "bold",
"      typeStyle = "NONE",
"      variablebuiltinStyle = "italic",
"      specialReturn = true,       -- special highlight for the return keyword
"      specialException = true,    -- special highlight for exception handling keywords 
"      transparent = false,        -- do not set background color
"      dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
"      colors = {},
"      overrides = {},
"  })

"  -- setup must be called before loading
"  local default_colors = require("kanagawa.colors").setup()
"  vim.cmd("colorscheme kanagawa")
" EOF 



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

"highlight Pmenu ctermbg=gray guibg=gray " only use it for deafult colorscheme

colorscheme base16-irblack  

""highligh scheme for errors
"hi LspDiagnosticsVirtualTextError guifg=red gui=bold,italic,underline
"hi LspDiagnosticsVirtualTextError guifg=#9e0303 gui=bold,italic,underline
"hi LspDiagnosticsVirtualTextWarning guifg=orange gui=italic,underline
"hi LspDiagnosticsVirtualTextInformation guifg=yellow gui=italic,underline
"hi LspDiagnosticsVirtualTextHint guifg=yellow gui=italic,underline
