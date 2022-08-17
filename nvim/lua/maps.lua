local map = function(mode, lhs, rhs, opts)
    local options = {
        noremap = true
    }
    if opts then
        options = vim.tbl.extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<Leader>nt', ':NERDTree<CR>') -- <Space> + nt - open NERDTree
map('n', '<Leader>nq', ':NERDTreeClose<CR>') -- <Space> + nq - close NERDTree

map('n', '<Leader>to', ':Telescope find_files<CR>') -- <Space> + to - open telescope finder
map('n', '<Leader>tl', ':Telescope live_grep<CR>') -- <Space> + tl - open telescope live grep
map('n', '<Leader>tb', ':Telescope buffers<CR>') -- <Space> + tb - open telescope buffers
map('n', '<Leader>th', ':Telescope help-tags<CR>') -- <Space> + th - open telescope help tags
