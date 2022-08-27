local status_ok , telescope = pcall(require, "telescope")
if not status_ok then 
    return
end 

-- setting up alias for telescope.actions for convenience
local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    -- NOTE : These are default key mappings  but are displayed here for reference
    -- To see the full list of mappings, check out lua/telescope/mappings.lua and the default_mappings table.
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },

    layout_configs = { 
            vertical = { width = 0.5 } 

    }, 
  }, -- end of defaults
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    find_files = { 
            theme = "dropdown", 
    }, 
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    fzf = { 
            fuzzy = true,                       -- false will only do exact matching
            override_generic_sorter = true,     -- override generic sorter 
            override_generic_sorter = true,     -- override file soreter
            case_mode = "smart_case",           -- or "ignore_case" or "respect_case" ( the default case mode is "smart_case") 
    } 

  },
}

-- loading telescope extensions
telescope.load_extension("neoclip") -- clipboard manager
telescope.load_extension("fzf") -- native fzf support for telescope



-- key mapping for telescope
-- NOTE : keeping variables local so that it doesn't interfere with global name space variables 
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- cwd  = Current Working Directory 
map('n', '<Space>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
map('n', '<Space>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
map('n', '<Space>fb', '<cmd>lua require("telescope.builtin").buffers({sort_mru=true})<CR>', opts)
map('n', '<Space>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)
map('n', '<Space>fm', '<cmd>lua require("telescope.builtin").man_pages()<CR>', opts) -- listing man pages of linux commands
map('n', '<Space>fc', '<cmd>lua require("telescope.builtin").colorscheme({enable_preview = true})<CR>', opts) -- previewing colorscheme
