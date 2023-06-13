local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
  use { "wbthomason/packer.nvim"} -- Have packer manage itself

  -- 主题
  -- use "lunarvim/colorschemes"
  use "lunarvim/darkplus.nvim"
  -- NvimTree
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  -- DashBoard
  use {'glepnir/dashboard-nvim', commit = "e517188dab55493fb9034b4d4f1a508ccacfcd45"}
  -- 自动补全
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "onsails/lspkind-nvim"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "ahmedkhalf/project.nvim"
  -- TreeSitter
  use { "nvim-treesitter/nvim-treesitter", commit = "8c71c6c5edfa447aaa867858e2e913340ea964b7", run = ":TSUpdate" }
  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  -- Symbols-outline
  use 'simrat39/symbols-outline.nvim'
  use {"akinsho/toggleterm.nvim", tag = '*' }
  use 'hesselbom/vim-hsftp'

  use {
	"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
