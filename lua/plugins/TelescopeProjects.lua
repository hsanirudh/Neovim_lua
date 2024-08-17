return {
  "nvim-telescope/telescope-project.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  config = function ()
    local telescope = require("telescope")
    telescope.load_extension('project')
  end
}
