local null_ls = require("null-ls")
local eslint = require("eslint")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		formatting.eslint, -- javascript / react / typescript
		formatting.black, -- python
		formatting.codespell, -- spell errors in text files
		formatting.djlint, -- html
		formatting.fixjson, -- json
		formatting.phpcsfixer, -- php
		formatting.sql_formatter, -- sql
		formatting.stylua, -- lua

		-- Diagnostics
		diagnostics.eslint.with({
			diagnostics_format = "[#{c}] #{m} (#{s})",
		}),
	},
	on_attach = function(client)
		if client.server_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
		end
	end,
})

-- ESLint setup

eslint.setup({
	bin = "eslint",
	code_actions = {
		enable = true,
		apply_on_save = {
			enable = true,
			types = { "problem", "suggestion" },
		},
	},
	diagnostics = {
		enable = true,
		run_on = "type",
	},
})
