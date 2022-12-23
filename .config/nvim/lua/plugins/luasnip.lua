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
-- Python snippets

ls.add_snippets("python", {
	ls.snippet(
		{ trig = "p" },
		ls.snippet_node(1, {
			ls.text_node("print("),
			ls.insert_node(1, "text"),
			ls.text_node(")"),
		})
	),
	ls.snippet(
		{ trig = "pf" },
		ls.snippet_node(1, {
			ls.text_node("print(f'"),
			ls.insert_node(1, "text"),
			ls.text_node("')"),
		})
	),
})
-- CSS snippets

ls.add_snippets("css", {
	ls.snippet(
		{ trig = "r", dscr = "Initial CSS reset" },
		ls.snippet_node(1, {
			ls.text_node({ "*{", "margin: 0;", "padding: 0;", "box-sizing: 'border-box';", "}" }),
		})
	),
})

ls.config.set_config({
	history = true,
	updateevents = "TextChanged, TextChangedI",
	enable_autosnippets = true,
})
