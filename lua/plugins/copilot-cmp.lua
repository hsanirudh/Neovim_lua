return {
  "zbirenbaum/copilot-cmp",
  priority = 900,
  dependencies = {
    "zbirenbaum/copilot.lua",
  },
  config = function()
    require("copilot_cmp").setup()
  end
}

