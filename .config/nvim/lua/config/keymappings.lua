local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Better window movement
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- H to move to the first non-blank character of the line
keymap("n", "H", "^", opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Keep visual mode indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Case change in visual mode
keymap("v", "`", "u", opts)
keymap("v", "<A-`>", "U", opts)

-- Save file by <esc><esc>
keymap("n", "<esc><esc>", ":w<CR>", opts)

-- Telescope
keymap("n", "<C-p>", "<CMD>lua require('plugins.telescope').project_files()<CR>")
keymap("n", "<S-p>", "<CMD>lua require('plugins.telescope.pickers.multi-rg')()<CR>")

-- Find word/file across project
keymap("n", "<Leader>pf",
  "<CMD>lua require('plugins.telescope').project_files({ default_text = vim.fn.expand('<cword>'), initial_mode = 'normal' })<CR>")
keymap("n", "<Leader>pw", "<CMD>lua require('telescope.builtin').grep_string({ initial_mode = 'normal' })<CR>")

-- Buffers
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<Leader>x", ":lua require('mini.bufremove').delete(0, false)<CR>", opts)

-- Don't yank on delete char
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
keymap("v", "x", '"_x', opts)
keymap("v", "X", '"_X', opts)

-- Don't yank on visual paste
keymap("v", "p", '"_dP', opts)

-- Avoid issues because of remapping <c-a> and <c-x> below
vim.cmd([[
  nnoremap <Plug>SpeedDatingFallbackUp <c-a>
  nnoremap <Plug>SpeedDatingFallbackDown <c-x>
]])

-- Quickfix
keymap("n", "<Space>,", ":cp<CR>", opts)
keymap("n", "<Space>.", ":cn<CR>", opts)

-- Toggle quicklist
keymap("n", "<leader>q", "<cmd>lua require('utils').toggle_quicklist()<CR>", opts)

-- Manually invoke speeddating in case switch.vim didn't work
keymap("n", "<C-a>", ":if !switch#Switch() <bar> call speeddating#increment(v:count1) <bar> endif<CR>", opts)
keymap("n", "<C-x>", ":if !switch#Switch({'reverse': 1}) <bar> call speeddating#increment(-v:count1) <bar> endif<CR>",
  opts)

-- Open links under cursor in browser with gx
if vim.fn.has('macunix') == 1 then
  keymap("n", "gx", "<cmd>silent execute '!open ' . shellescape('<cWORD>')<CR>", opts)
else
  keymap("n", "gx", "<cmd>silent execute '!xdg-open ' . shellescape('<cWORD>')<CR>", opts)
end

-- LSP

keymap("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>", opts)
keymap("n", "<leader>gD", "<cmd>Lspsaga goto_type_definition<CR>", opts)
keymap("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", opts)
keymap("n", "<leader>pD", "<cmd>Lspsaga peek_type_definition<CR>", opts)
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>ra", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
keymap("n", "<leader>cl", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded', max_width = 100 })<CR>", opts)
keymap("n", "<Leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap("n", "<Leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "<Leader>o", "<cmd>Lspsaga outline<CR>", opts)
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "gr", "<cmd>Lspsaga finder<CR>", opts)
