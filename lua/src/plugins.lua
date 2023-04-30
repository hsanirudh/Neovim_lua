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
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
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
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	-- LSP and mason
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- Telescope
	use("nvim-telescope/telescope.nvim")
	-- nvim-tree
	use("kyazdani42/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")
	-- dashboard.nivm
	use({
		"glepnir/dashboard-nvim",
	})
	-- bufferline.lua
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
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
	-- diffview
	use("sindrets/diffview.nvim")
	-- lspsaga
	use("glepnir/lspsaga.nvim")
	-- telescope-file-browser.nvim
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	-- colorizer
	use({ "norcalli/nvim-colorizer.lua" })
	-- telescope-emoji
	use({ "xiyaowong/telescope-emoji.nvim" })
	-- telescope-packer
	use({ "nvim-telescope/telescope-packer.nvim" })
	-- which-key
	use({ "folke/which-key.nvim" })
	-- wilder-nvim
	use({ "gelguy/wilder.nvim" })
	-- indent-blackline
	use({ "lukas-reineke/indent-blankline.nvim" })
	-- nvim-cursorline
	use({ "yamatsum/nvim-cursorline" })
	-- better-escape.nvim
	use({ "max397574/better-escape.nvim" })
	-- rainbow brackets
	use({ "HiPhish/nvim-ts-rainbow2" })
        -- Vim-eunuch
        use({ "tpope/vim-eunuch" })
        -- vim-fugative
        use({ "tpope/vim-fugitive" })
        -- vim-smoothie
        use({ "psliwka/vim-smoothie" })
        -- code-minimap
        use({ "wfxr/minimap.vim" })
        -- error-lens
        use {("chikko80/error-lens.nvim")}
        -- structlog.nvim
        use {("Tastyep/structlog.nvim")}
	-- Sync_Packer
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
