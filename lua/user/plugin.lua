-- packer pluging manager
-- NOTE : use { <plugin name> , commit =<commit hash>} will make sure that whenever you update or sync packer only specific commit is used 
-- why do we need this ? 
    -- This technique is to replicate version set in Amazon build system. ( it makes sure we have snapshot of plugins ,at specific commit, that are working together
    -- This prevents breaking changes when we include new plugin in the system.
    -- tempalate : use {'', commit=""}

-- This file can be loaded by calling 'lua require('plugins') from your init.vim
-- only required if you have packer configuration as 'opt'

--vim.cmd [[ packadd packer.nvim ]]

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return packer.startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim' , commit = "3a9f9801f683946b9f1047d8f4bf9946c29e927d"} 
   
    -- tools line
    use {'nvim-lualine/lualine.nvim' , commit = "3cf45404d4ab5e3b5da283877f57b676cb78d41d"} -- better status line 
    use { 'kyazdani42/nvim-web-devicons', commit = "2d02a56189e2bde11edd4712fea16f08a6656944"} -- for icons in statusline  ( needed by lualine ) 
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-telescope/telescope.nvim', commit = "b923665e64380e97294af09117e50266c20c71c7"} -- file finder, grepper etc. 

    use { 'nvim-treesitter/nvim-treesitter', commit ="8a1ff3cf6a43cff98abdf572d2605407306e58ba"} -- treesitter for some goddies in syntax + other feature (excellent parser generator tool)  
    -- clipboard manager plugin
    use {'AckslD/nvim-neoclip.lua', commit="74af02e289b3ea465bc8a4d7b9b83adc4e4b8c06"}


    -- extra help plugins
    use {'nvim-lua/popup.nvim', commit="b7404d35d5d3548a82149238289fa71f7f6de4ac"}
    use {'sudormrfbin/cheatsheet.nvim', commit='9716f9aaa94dd1fd6ce59b5aae0e5f25e2a463ef'}

    -- colorscheme
    use 'joshdick/onedark.vim'
    use 'folke/tokyonight.nvim'
    use 'jacoborus/tender.vim'
    use 'EdenEast/nightfox.nvim'
end)
