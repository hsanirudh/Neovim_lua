local db = require("dashboard")

db.custom_center = {
  {
    icon = "  ",
    desc = "New File                                ",
    action =  "DashboardNewFile",
    shortcut = "SPACE n"
  },
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "SHIFT f",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "SHIFT b",
	},
	{
		icon = "  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		shortcut = "SHIFT l",
	},
}

db.custom_header = {
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
}
