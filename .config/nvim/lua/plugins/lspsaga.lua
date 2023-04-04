require("lspsaga").setup({
	ui = {
		-- Currently, only the round theme exists
		theme = "round",
	},
	diagnostic = {
		show_code_action = true,
		show_source = true,
		jump_num_shortcut = true,
		-- 1 is max
		max_width = 0.7,
		custom_fix = nil,
		custom_msg = nil,
		text_hl_follow = false,
		keys = {
			exec_action = "o",
			quit = "q",
			go_action = "g",
		},
	},
	rename = {
		quit = "q",
		exec = "<CR>",
		mark = "x",
		confirm = "<CR>",
		in_select = true,
	},
	outline = {
		win_position = "right",
		win_with = "",
		win_width = 30,
		show_detail = true,
		auto_preview = true,
		auto_refresh = true,
		auto_close = true,
		custom_sort = nil,
		keys = {
			jump = "o",
			expand_collapse = "u",
			quit = "q",
		},
	},
	symbol_in_winbar = {
		enable = true,
		separator = "  ",
		-- hide_keyword = true,
		show_file = true,
		folder_level = 2,
		respect_root = false,
		color_mode = true,
	},
   beacon = {
    enable = true,
    frequency = 7,
  },
})
