local map = function(mode, lhs, rhs, opts)
	local options = {
		noremap = true,
		silent = true,
	}
	if opts then
		options = vim.tbl.extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Reset search highlight

map("n", "<Leader>rs", ":noh<CR>")

-- Fast save

map(
	"n",
	"<esc><esc>",
	":w<CR>:lua vim.notify('File saved successfully', 'info', { title= 'File saved',timeout= 100})<CR>"
) -- Save pressing Esc key two times in normal mode

map("n", "<Leader>ntt", ":NeoTreeFocusToggle<CR>") -- Toggle neotree

-- Telescope

map("n", "<Leader>to", ":Telescope find_files<CR>") -- Open telescope finder
map("n", "<Leader>tl", ":Telescope live_grep<CR>") -- Open telescope live grep
map("n", "<Leader>tb", ":Telescope buffers<CR>") -- Open telescope buffers

-- Tabs keymaps

-- map("n", "<Leader>pt", ":BufferPrevious<CR>") -- Previous tab
map("n", "<Leader>pt", ":BufferPin<CR>") -- Pin tab
map("n", "<Leader>nt", ":BufferNext<CR>") -- Next tab

map("n", "<Leader>tca", ":BufferCloseAllButCurrentOrPinned<CR>") -- Close all tabs except current or pinned

map("n", "<Leader>t1", ":BufferGoto 1<CR>") -- Tab 1
map("n", "<Leader>t2", ":BufferGoto 2<CR>") -- Tab 2
map("n", "<Leader>t3", ":BufferGoto 3<CR>") -- Tab 3
map("n", "<Leader>t4", ":BufferGoto 4<CR>") -- Tab 4
map("n", "<Leader>t5", ":BufferGoto 5<CR>") -- Tab 5
map("n", "<Leader>t6", ":BufferGoto 6<CR>") -- Tab 6
map("n", "<Leader>t7", ":BufferGoto 7<CR>") -- Tab 7
map("n", "<Leader>t8", ":BufferGoto 8<CR>") -- Tab 8
map("n", "<Leader>t9", ":BufferGoto 9<CR>") -- Tab 9
map("n", "<Leader>t0", ":BufferLast<CR>") -- Last tab
map("n", "<Leader>tc", ":BufferClose<CR>") -- Close tab

-- Cheatsheet keymaps

map("n", "<Leader>cs", ":Cheatsheet<CR>")

-- Icon picker

map("n", "<Leader>ip", ":IconPickerNormal alt_font symbols nerd_font emoji<CR>")
map("n", "<Leader>ipy", ":IconPickerYank alt_font symbols nerd_font emoji<CR>")

-- LSP saga

map("n", "K", ":Lspsaga hover_doc<CR>") -- open documentation of the section below the cursor
map("n", "gd", ":Lspsaga lsp_finder<CR>") -- find definition of the section below the cursor
map("n", "gp", ":Lspsaga preview_definition<CR>") -- preview definition below the cursor
map("n", "gr", ":Lspsaga rename<CR>") -- rename symbol below the cursor
map("n", "<Leader>dn", ":Lspsaga diagnostic_jump_next<CR>") -- Go to next diagnostic
map("n", "<Leader>dp", ":Lspsaga diagnostic_jump_prev<CR>") -- Go to the previous diagnostic
map("n", "<Leader>ca", ":Lspsaga code_action<CR>") -- Open code actions menu

-- Symbols Outline
map("n", "<Leader>o", ":SymbolsOutline<CR>")

-- Formatting
map(
	"n",
	"<Leader>f",
	":lua vim.lsp.buf.format()<CR> :lua vim.notify('File formatted succesfully','info', { title= 'File formatted',timeout= 100})<CR>"
)

-- Color picker
map("n", "<Leader>cp", ":CccPick<CR>")
