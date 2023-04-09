local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
  -- Plugin manager
  use("wbthomason/packer.nvim")

  -- Color-scheme
  use("ellisonleao/gruvbox.nvim") -- gruvbox theme
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  use {
	'VonHeikemen/lsp-zero.nvim',
  	branch = 'v1.x',
  	requires = {
  	  -- LSP Support
  	  {'neovim/nvim-lspconfig'},             -- Required
  	  {'williamboman/mason.nvim'},           -- Optional
  	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

  	  -- Autocompletion
  	  {'hrsh7th/nvim-cmp'},         -- Required
  	  {'hrsh7th/cmp-nvim-lsp'},     -- Required
  	  {'hrsh7th/cmp-buffer'},       -- Optional
  	  {'hrsh7th/cmp-path'},         -- Optional
  	  {'saadparwaiz1/cmp_luasnip'}, -- Optional
  	  {'hrsh7th/cmp-nvim-lua'},     -- Optional

  	  -- Snippets
  	  {'L3MON4D3/LuaSnip'},             -- Required
  	  {'rafamadriz/friendly-snippets'}, -- Optional
  	}
  }

  -- File explorer
  use {
	'nvim-tree/nvim-tree.lua',
  	requires = {
  	  'nvim-tree/nvim-web-devicons', -- optional, for file icons
  	},
  	tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Automatically close () [] {}
  use("windwp/nvim-autopairs")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
