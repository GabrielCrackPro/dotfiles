local ls = require("luasnip")

local addTextSnippet = function(trigger, name, body)
	local snippet = ls.snippet({ trig = trigger, name = name, dscr = name }, { ls.text_node(body) })
	return snippet
end

-- Javascript snippets

ls.add_snippets("javascript", {
	addTextSnippet("$", "Custom querySelector", "const $ = (selector) => document.querySelector(selector)"),
	addTextSnippet("$$", "Custom querySelectorAll", "const $$ = (selector) => document.querySelectorAll(selector)"),
	ls.snippet(
		{ trig = "af" },
		ls.snippet_node(1, {
			ls.text_node("const "),
			ls.insert_node(1, "name"),
			ls.text_node(" = () => {}"),
		})
	),
})

ls.config.set_config({
	history = true,
	updateevents = "TextChanged, TextChangedI",
	enable_autosnippets = true,
})
