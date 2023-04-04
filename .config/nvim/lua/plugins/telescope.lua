require("telescope").setup({
	defaults = {
		path_display = { "smart" },
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
		live_grep = {
			theme = "dropdown",
		},
	},
	mappings = {
		n = {
			["<C-n>"] = require("telescope.actions").move_selection_next,
			["<C-p>"] = require("telescope.actions").move_selection_previous,
			["<Esc>"] = require("telescope.actions").close,
			["/"] = {
				"i",
				type = "command",
			},
		},
		i = {
			["<Esc>"] = require("telescope.actions").close,
		},
	},
})

-- Extensions

require("telescope").load_extension("noice")
