return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope-fzy-native.nvim",
          "jonarrien/telescope-cmdline.nvim",
	},
	keys = {
            { ":", "<cmd>Telescope cmdline<cr>", desc = "Cmdline" },
	},
	opts = {
          extensions = {
            cmdline = {
              picker = {
                layout_config = {
                  width = 120,
                  height = 25,
                },
              },
              mappings = {
                complete = "<Tab>",
                run_selection = "<C-CR>",
                run_input = "<CR>",
              },
            },
          },
	},
	config = function(_, opts)
          local t = require("telescope")
          t.setup(opts)
          t.load_extension("fzy_native")
          t.load_extension("cmdline")
	end,
}

