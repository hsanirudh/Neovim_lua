-- Automatically install packer If not
local fn = vim.fn
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

-- Using pcall for debugging purpose
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- plugins
return packer.startup(function(use)
	-- packer.nvim plugin
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	-- MarkDown Preview
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
	-- colorscheme
	use("folke/tokyonight.nvim")
	-- nvim-cmp and plugins
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("jose-elias-alvarez/null-ls.nvim")
	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- Telescope
	use("nvim-telescope/telescope.nvim")
	-- nvim-tree
	use("kyazdani42/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")
	-- dashboard.nivm
	use("glepnir/dashboard-nvim")
	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v2.*" })
	-- Lualine.nvim
	use("nvim-lualine/lualine.nvim")
	-- gitsigns
	use("lewis6991/gitsigns.nvim")
	-- comment
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	-- indent_blackline
	use("lukas-reineke/indent-blankline.nvim")
	-- diffview
	use("sindrets/diffview.nvim")
	-- terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "v1.*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use("glepnir/lspsaga.nvim")
	-- telescope-file-browser.nvim
	use("nvim-telescope/telescope-file-browser.nvim")
	-- colorizer
	use("norcalli/nvim-colorizer.lua")
	-- Sync_Packer
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
