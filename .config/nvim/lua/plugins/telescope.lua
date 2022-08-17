require('telescope').setup({
    defaults = {
        path_display = {'smart'},
        mappings = {
            n = {
                ["<C-n>"] = require('telescope.actions').move_selection_next,
                ["<C-p>"] = require('telescope.actions').move_selection_previous,
                ["<C-c>"] = require('telescope.actions').close,
                ["p"] = require('telescope.actions').close,
                ["/"] = {
                    'i',
                    type = 'command'
                }
            },
            i = {
                ["<C-]>"] = require('telescope.actions').close
            }
        }
    }
})
