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

map("n", "+", ":DialIncrement<CR>") -- Increment numbers
map("n", "-", ":DialDecrement<CR>") -- Decrement numbers

map("n", "<Leader>rs", ":noh<CR>") -- Reset search hightlight

map("n", "<Leader>ft", ":lua print(vim.bo.ft)<CR>") -- View filetype

-- Fast save

map("n", "<esc><esc>", ":w<CR>") -- Save double pressing Esc key

map("n", "<Leader>ntt", ":NeoTreeFocusToggle<CR>") -- Toggle neotree

map("n", "<Leader>to", ":FzfLua files<CR>") -- View files in the current directory
map("n", "<Leader>tl", ":FzfLua live_grep <CR>") -- Search text in the current file
map("n", "<Leader>tb", ":FzfLua buffers<CR>") -- View current active buffers

-- Tabs keymaps

map("n", "<Leader>pt", ":BufferPin<CR>") -- Pin tab
map("n", "<Leader>nt", ":BufferNext<CR>") -- Next tab

map("n", "<Leader>tc", ":BufferClose<CR>")
map("n", "<Leader>tca", ":BufferCloseAllButCurrentOrPinned<CR>") -- Close all tabs except current or pinned

map("n", "<Leader>t1", ":BufferFirst<CR>") -- First tab
map("n", "<Leader>t2", ":BufferGoto 2<CR>") -- Tab 2
map("n", "<Leader>t3", ":BufferGoto 3<CR>") -- Tab 3
map("n", "<Leader>t4", ":BufferGoto 4<CR>") -- Tab 4
map("n", "<Leader>t5", ":BufferGoto 5<CR>") -- Tab 5
map("n", "<Leader>t6", ":BufferGoto 6<CR>") -- Tab 6
map("n", "<Leader>t7", ":BufferGoto 7<CR>") -- Tab 7
map("n", "<Leader>t8", ":BufferGoto 8<CR>") -- Tab 8
map("n", "<Leader>t9", ":BufferGoto 9<CR>") -- Tab 9
map("n", "<Leader>t0", ":BufferLast<CR>") -- Last tab

-- Split keymaps

map("n", "wsl", ":FocusSplitLeft<CR>") -- Create a left split
map("n", "wsr", ":FocusSplitRight<CR>") -- Create a right split
map("n", "wsu", ":FocusSplitUp<CR>") -- Create an up split
map("n", "wsd", ":FocusSplitDown<CR>") -- Create a down split

map("n", "wse", ":FocusEqualise<CR>") -- Make the splited windows an equal width 
map("n", "wsm", ":FocusMaximise<CR>") -- Maximise the focused window
map("n", "wsme", ":FocusMaxOrEqual<CR>") -- Toggle between commands above

map("n", "wsc", ":FocusSplitCycle<CR>") -- Cycle between splited windows

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
map("n", "<Leader>o", ":Lspsaga outline<CR>") -- Open outline

-- Formatting
map(
	"n",
	"<Leader>f",
	":lua vim.lsp.buf.format()<CR> :lua vim.notify('File formatted succesfully','info', { title= 'File formatted',timeout= 100})<CR>"
)

-- Color picker
map("n", "<Leader>cp", ":CccPick<CR>")
