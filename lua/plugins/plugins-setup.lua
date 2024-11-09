local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- 保存该文件就自动更新和安装插件
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      'nvim-tree/nvim-tree.lua',
      requires= {
          'nvim-tree/nvim-web-devicons',
      }
  }
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'anott03/nvim-lspinstall'
  use 'navarasu/onedark.nvim'

  use 'nvim-treesitter/nvim-treesitter'     
  use 'p00f/nvim-ts-rainbow'

  use{
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      --"neovim/nvim-lspconfig"
  }

  use 'hrsh7th/cmp-nvim-lsp'
  --use 'L3MON4D3/LuaSnip'        -- snippets引擎
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/cmp-path'
  
  use{
      "hrsh7th/nvim-cmp",
      requires = {
          "hrsh7th/cmp-nvim-lsp",
          "onsails/lspkind-nvim",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-nvim-lua",
          "octaltree/cmp-look",
          "hrsh7th/cmp-path",
          "f3fora/cmp-spell",
      }
  }
  use{
      "L3MON4D3/LuaSnip",
      requires = {
          --"saadparwaiz1/cmp_luasnip",
          "rafamadriz/friendly-snippets"
      }
  }
  use ({
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
    config = function()
        require('lspsaga').setup({})
    end,
  })
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
