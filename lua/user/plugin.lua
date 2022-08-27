-- This file can be loaded by calling 'lua require('plugins') from your init.vim
-- only required if you have packer configuration as 'opt'
vim.cmd [[ packadd packer.nvim ]]
-- packer pluging manager
-- NOTE : use { <plugin name> , commit =<commit hash>} will make sure that whenever you update or sync packer only specific commit is used 
-- why do we need this ? 
    -- This technique is to replicate version set in Amazon build system. ( it makes sure we have snapshot of plugins ,at specific commit, that are working together
    -- This prevents breaking changes when we include new plugin in the system.
return require('packer').startup(function(use)
    -- Packer can manage itself
    use {'wbthomason/packer.nvim' , commit = "3a9f9801f683946b9f1047d8f4bf9946c29e927d"} 
   
    -- tools line
    use {'nvim-lualine/lualine.nvim' , commit = "3cf45404d4ab5e3b5da283877f57b676cb78d41d"} -- better status line 
    use { 'kyazdani42/nvim-web-devicons', commit = "2d02a56189e2bde11edd4712fea16f08a6656944"} -- for icons in statusline  ( needed by lualine ) 
    use {'nvim-telescope/telescope.nvim', commit = "b923665e64380e97294af09117e50266c20c71c7"} -- file finder, grepper etc. 

    -- colorscheme
    use 'joshdick/onedark.vim'
    use 'folke/tokyonight.nvim'
    use 'jacoborus/tender.vim'
    use 'EdenEast/nightfox.nvim'
end)
