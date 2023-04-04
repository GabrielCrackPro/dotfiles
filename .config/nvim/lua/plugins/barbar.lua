require("bufferline").setup({
	-- Enable/disable animations
	animation = true,

	-- Enable/disable auto-hiding the tab bar when there is a single buffer
	auto_hide = true,

	-- Enable/disable current/total tabpages indicator (top right corner)
	tabpages = true,

	-- Enable/disable close button
	closable = true,

	diagnostics_update_in_insert = true,
	diagnostics_indicator = function(count, level)
		local icon = level:match("error") and " " or ""
		return " " .. icon .. count
	end,

	-- Enable/disable icons
  icons = {
    buffer_index = true,
    modified = {
      button = "*"
    },
    separator = {
      left = "",
      button = ""
    },
    pinned = {
      button = "",
    },
    filetype = {
      enabled = true
    },
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = true, icon = " "},
      [vim.diagnostic.severity.WARN] = {enabled = true, icon = " "},
      [vim.diagnostic.severity.INFO] = {enabled = true, icon = " "},
      [vim.diagnostic.severity.HINT] = {enabled = true, icon = " " },
    },
  },

	-- If set, the icon color will follow its corresponding buffer highlight group.
	icon_custom_colors = false,

	-- If true, new buffers will be inserted at the start/end of the list.
	insert_at_end = true,

	-- Sets the maximum padding width with which to surround each tab
	maximum_padding = 3,

	-- Sets the minimum padding width with which to surround each tab
	minimum_padding = 2,

	-- Sets the maximum buffer name length.
	maximum_length = 30,

	-- If set, the letters for each buffer in buffer-pick mode will be
	-- assigned based on their name. Otherwise or in case all letters are
	-- already assigned, the behavior is to assign letters in order of
	-- usability (see order below)
	semantic_letters = true,

	-- New buffer letters are assigned in this order. This order is
	-- optimal for the qwerty keyboard layout but might need adjustment
	-- for other layouts.
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

	-- Sets the name of unnamed buffers. By default format is "[Buffer X]"
	-- where X is the buffer number. But only a static string is accepted here.
	no_name_title = "New Tab",
})
