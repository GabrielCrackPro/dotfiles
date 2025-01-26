local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- Quick save
keymap.set("n", "<esc><esc>", "<cmd>w<cr>", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Don't yank on delete char
keymap.set("n", "x", '"_x', opts)
keymap.set("n", "X", '"_X', opts)
keymap.set("v", "x", '"_x', opts)
keymap.set("v", "X", '"_X', opts)

-- Don't yank on visual paste
keymap.set("v", "p", '"_dP', opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Tabs
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", opts)
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)
keymap.set("n", "<Leader>x", "<cmd>lua require('mini.bufremove').delete(0, false)<cr>", opts)

-- File Explorer
keymap.set("n", "<Leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Search and replace in multiple files
keymap.set("n", "<Leader>sp", "<cmd>Spectre<cr>", opts)

-- LSP
keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<cr>", opts)
keymap.set("n", "gD", "<cmd>Lspsaga goto_type_definition<cr>", opts)
keymap.set("n", "pd", "<cmd>Lspsaga peek_definition<cr>", opts)
keymap.set("n", "pD", "<cmd>Lspsaga peek_type_definition<cr>", opts)
keymap.set("n", "hd", "<cmd>Lspsaga hover_doc<cr>", opts)
keymap.set("n", "<Leader>ra", "<cmd>Lspsaga rename<cr>", opts)
keymap.set("n", "<Leader>ca", "<cmd>Lspsaga code_action<cr>", opts)
keymap.set("n", "<Leader>o", "<cmd>Lspsaga outline<cr>", opts)
keymap.set("n", "<Leader>dn", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
keymap.set("n", "<Leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
keymap.set("n", "<Leader>gr", "<cmd>Lspsaga finder<cr>", opts)
keymap.set("n", "<Leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", opts)

-- Telescope
keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap.set("n", "<Leader>fw", "<cmd>Telescope live_grep<cr>", opts)

-- Git Signs
keymap.set("n", "<Leader>ghd", "<cmd>Gitsings detach<cr>", opts)
keymap.set("n", "<Leader>ghp", "<cmd>Gitsings preview_hunk<cr>", opts)
keymap.set("n", "<Leader>ghR", "<cmd>Gitsings reset_buffer<cr>", opts)
keymap.set("n", "<Leader>ghr", "<cmd>Gitsings reset_hunk<cr>", opts)
keymap.set("n", "<Leader>ghs", "<cmd>Gitsings stage_hunk<cr>", opts)
keymap.set("n", "<Leader>ghS", "<cmd>Gitsings stage_buffer<cr>", opts)
keymap.set("n", "<Leader>ght", "<cmd>Gitsings toggle_deleted<cr>", opts)
keymap.set("n", "<Leader>ghu", "<cmd>Gitsings undo_stage_hunk<cr>", opts)

-- Git Diff
keymap.set("n", "<Leader>gd", "<cmd>DiffviewFileHistory<cr>", opts)
keymap.set("n", "<Leader>gS", "<cmd>DiffviewToggleFiles<cr>", opts)

-- Git Conflict
keymap.set("n", "<Leader>gcb", "<cmd>GitConflictChooseBoth<cr>", opts)
keymap.set("n", "<Leader>gcn", "<cmd>GitConflictNextConflict<cr>", opts)
keymap.set("n", "<Leader>gcc", "<cmd>GitConflictChooseOurs<cr>", opts)
keymap.set("n", "<Leader>gcp", "<cmd>GitConflictPrevConflict<cr>", opts)
keymap.set("n", "<Leader>gci", "<cmd>GitConflictChooseTheirs<cr>", opts)

-- Lazy Git
keymap.set("n", "<Leader>gg", "<cmd>LazyGit<cr>", opts)
