local wpm = require("wpm")
wpm.setup({
	sample_count = 15,
	sample_interval = 3000,
	percentile = 0.9,
})
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { {
			"filename",
			file_status = true,
			path = 1,
		} },
		lualine_x = { wpm.wpm, wpm.history_graph },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	extensions = { "neo-tree", "symbols-outline" },
})
