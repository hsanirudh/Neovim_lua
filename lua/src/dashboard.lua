local db = require("dashboard")

db.setup({
  theme = 'doom',
  config = {
    header = {
	[[                                                          ]],
	[[                                                          ]],
	[[  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗  ]],
	[[  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║  ]],
	[[  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║  ]],
	[[  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║  ]],
	[[  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║  ]],
	[[  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝  ]],
	[[                                                          ]],
	[[                                                          ]],
	[[                                                          ]],
    },
    center = {
	     {
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		key= "SPC tf",
	     },
	     {
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		key= "SPC tb",
	     },
	     {
		icon = "  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		key= "SPC tl",
	     },
  }
 }
})
