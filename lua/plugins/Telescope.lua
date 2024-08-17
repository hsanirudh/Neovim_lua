return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-fzy-native.nvim",
    },
    config = function ()
        local t = require("telescope")
        t.load_extension("fzy_native")
    end
}