local dashboard = require("dashboard")
dashboard.custom_header = {
	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
}
dashboard.custom_center = {
	{
		icon = "",
		desc = " Recently opened files                 ",
		action = "DasboardFindHistory",
	},
	{
		icon = "",
		desc = " Find file                 ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
	},
	{
		icon = "",
		desc = " File explorer                 ",
		action = "Telescope find_files",
	},
	{
		icon = "",
		desc = " Find word                 ",
		action = "Telescope live_grep",
	},
	{
		icon = "",
		desc = " Exit                 ",
		action = ":q",
	},
}
dashboard.custom_footer = {
	"🚀 Enjoy nvim",
}
