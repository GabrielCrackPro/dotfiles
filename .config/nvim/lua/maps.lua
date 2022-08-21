local map = function(mode, lhs, rhs, opts)
    local options = {
        noremap = true,
        silent = true
    }
    if opts then
        options = vim.tbl.extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<Leader>nto', ':NERDTree<CR>') -- <Space> + nt - open NERDTree
map('n', '<Leader>q', ':NERDTreeClose<CR>') -- <Space  q - close NERDTree

map('n', '<Leader>to', ':Telescope find_files<CR>') -- <Space> + to - open telescope finder
map('n', '<Leader>tl', ':Telescope live_grep<CR>') -- <Space> + tl - open telescope live grep
map('n', '<Leader>tb', ':Telescope buffers<CR>') -- <Space> + tb - open telescope buffers

-- Tabs keymaps

map('n', '<Leader>pt', ':BufferPrevious<CR>') -- Previous tab
map('n', '<Leader>nt', ':BufferNext<CR>') -- Next tab

map('n', '<Leader>t1', ':BufferGoto 1<CR>') -- Tab 1
map('n', '<Leader>t2', ':BufferGoto 2<CR>') -- Tab 2
map('n', '<Leader>t3', ':BufferGoto 3<CR>') -- Tab 3
map('n', '<Leader>t4', ':BufferGoto 4<CR>') -- Tab 4
map('n', '<Leader>t5', ':BufferGoto 5<CR>') -- Tab 5
map('n', '<Leader>t6', ':BufferGoto 6<CR>') -- Tab 6
map('n', '<Leader>t7', ':BufferGoto 7<CR>') -- Tab 7
map('n', '<Leader>t8', ':BufferGoto 8<CR>') -- Tab 8
map('n', '<Leader>t9', ':BufferGoto 9<CR>') -- Tab 9
map('n', '<Leader>t0', ':BufferLast<CR>') -- Last tab

map('n','<Leader>tc', ':BufferClose<CR>') -- Close tab

-- Commentary keymaps

map('n' ,'gc' , '<Plug>commentary')
map('n', 'gcc', '<Plug>commentary_motion')

-- Cheatsheet keymaps

map('n', '<Leader>cs', ':Cheatsheet<CR>')

-- Icon picker

map('n', '<Leader>ip', ':IconPickerNormal alt_font symbols nerd_font emoji<CR>')
map('n', '<Leader>ipy', ':IconPickerYank alt_font symbols nerd_font emoji<CR>')

-- Spotify

map('n', '<Leader>sn', ':SpotifyNext<CR>')
map('n', '<Leader>sp', ':SpotifyPrevious<CR>')

-- LSP saga

map('n', 'K', ':Lspsaga hover_doc<CR>') -- open documentation of the section below the cursor
map('n', 'gd', ':Lspsaga lsp_finder<CR>') -- find definition of the section below the cursor
map('i', '<C-k>', ':Lspsaga signature_help<CR>') -- find function signature in insert mode
map('n', 'gp', ':Lspsaga preview_definition<CR>') -- preview definition below the cursor
map('n', 'gr', ':Lspsaga rename<CR>') -- rename symbol below the cursor 
