require("nvim-treesitter.configs").setup({
	auto_install = true,
	hightlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"tsx",
		"json",
		"css",
		"html",
		"lua",
	},
	autotag = {
		enable = true,
	},
})
