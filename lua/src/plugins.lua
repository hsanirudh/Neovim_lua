local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	("nvim-lua/popup.nvim"), -- An implementation of the Popup API from vim in Neovim
	("nvim-lua/plenary.nvim"), -- Useful lua functions used ny lots of plugins
	-- MarkDown Preview
	({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	}),
	-- colorscheme
	("folke/tokyonight.nvim"),
	-- nvim-cmp and plugins
	("hrsh7th/cmp-nvim-lsp"),
	("hrsh7th/cmp-cmdline"),
	("hrsh7th/nvim-cmp"),
	("hrsh7th/cmp-nvim-lua"),
	("saadparwaiz1/cmp_luasnip"),
	("L3MON4D3/LuaSnip"),
	("hrsh7th/cmp-buffer"),
	("hrsh7th/cmp-path"),
	("rafamadriz/friendly-snippets"),
	-- LSP and mason
	("jose-elias-alvarez/null-ls.nvim"),
	({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}),
	-- Treesitter
	({ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }),
	-- Telescope
	("nvim-telescope/telescope.nvim"),
	-- nvim-tree
	("kyazdani42/nvim-tree.lua"),
	("kyazdani42/nvim-web-devicons"),
	-- dashboard.nivm
	({
		"glepnir/dashboard-nvim",
	}),
	-- bufferline.lua
	({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" }),
	-- Lualine.nvim
	("nvim-lualine/lualine.nvim"),
	-- gitsigns
	("lewis6991/gitsigns.nvim"),
	-- comment
	("numToStr/Comment.nvim"),
	("JoosepAlviste/nvim-ts-context-commentstring"),
	-- autopairs
	({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	}),
	-- ns-auto-tag
	("windwp/nvim-ts-autotag"),
	-- diffview
	("sindrets/diffview.nvim"),
	-- lspsaga,
	("glepnir/lspsaga.nvim"),
	-- telescope-file-browser.nvim
	({ "nvim-telescope/telescope-file-browser.nvim" }),
	-- colorizer
	({ "norcalli/nvim-colorizer.lua" }),
	-- telescope-emoji
	({ "xiyaowong/telescope-emoji.nvim" }),
	-- telescope-packer
	({ "nvim-telescope/telescope-packer.nvim" }),
	-- which-key
	({ "folke/which-key.nvim" }),
	-- wilder-nvim
	({ "gelguy/wilder.nvim" }),
	-- indent-blackline
	({ "lukas-reineke/indent-blankline.nvim" }),
	-- nvim-cursorline
	({ "yamatsum/nvim-cursorline" }),
	-- better-escape.nvim
	({ "max397574/better-escape.nvim" }),
	-- rainbow brackets
	({ "HiPhish/nvim-ts-rainbow2" }),
        -- Vim-eunuch
        ({ "tpope/vim-eunuch" }),
        -- vim-fugative
        ({ "tpope/vim-fugitive" }),
        -- vim-smoothie
        ({ "psliwka/vim-smoothie" }),
        -- code-minimap
        ({ "wfxr/minimap.vim" }),
        -- error-lens
        {("chikko80/error-lens.nvim")},
        -- structlog.nvim
        {("Tastyep/structlog.nvim")},
        -- carbon.sh
        {( "ellisonleao/carbon-now.nvim" )},
        -- numb
        {( "nacro90/numb.nvim" )},
      })
