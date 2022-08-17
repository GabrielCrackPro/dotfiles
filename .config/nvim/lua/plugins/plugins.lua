local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- List of plugins

Plug 'ryanoasis/vim-devicons'
-- Themes
Plug('getomni/neovim', {
    ['branch'] = 'main'
})
Plug 'olimorris/onedarkpro.nvim'
-- Utilities
Plug 'nvim-lualine/lualine.nvim'
Plug 'preservim/NERDTree'
Plug 'mattn/emmet-vim'
Plug 'chiel92/vim-autoformat'
Plug 'pangloss/vim-javascript'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {
    ['tag'] = '0.1.0'
})
Plug 'luukvbaal/nnn.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'wakatime/vim-wakatime'
Plug 'glepnir/dashboard-nvim'
Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'folke/lsp-colors.nvim'
Plug 'folke/lsp-trouble.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'dinhhuy258/git.nvim'

-- Completion plugins
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'williamboman/nvim-lsp-installer'
Plug 'rafamadriz/friendly-snippets'

vim.call('plug#end')

-- Set up completion
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require('cmp')
local luasnip = require('luasnip')

local select_opts = {
    behavior = cmp.SelectBehavior.Select
}
-- LSP servers

local lspconfig = require('lspconfig')

local servers = {'tsserver', 'cssls', 'html', 'intelephense', 'jedi_language_server', 'zk', 'jsonls'}

-- sumneko_lua separated config

lspconfig.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            },
            runtime = {
                library = vim.api.nvim_get_runtime_file('', true)
            },
            telemetry = {
                enable = false
            }
        }
    }
}

-- Default config for all language servers

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
        root_dir = function()
            return vim.fn.getcwd() -- set up root directory to cwd by default
        end
    }
end
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    sources = {{
        name = 'path'
    }, {
        name = 'nvim_lsp',
        keyword_length = 3
    }, {
        name = 'buffer',
        keyword_length = 3
    }, {
        name = 'luasnip',
        keyword_length = 3
    }},
    window = {
        documentation = cmp.config.window.bordered()
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        mode = 'symbol_text',
        format = function(entry, item)
            item.kind = require("lspkind").presets.default[item.kind] .. " " .. item.kind
            local menu_icon = {
                nvim_lsp = '',
                luasnip = '',
                buffer = '﬘',
                path = ''
            }

            item.menu = menu_icon[entry.source.name]
            return item
        end
    },
    mapping = {
        ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
        ['<Down>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
        ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),

        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
            select = true
        }),

        ['<C-d>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(1) then
                luasnip.jump(1)
            else
                fallback()
            end
        end, {'i', 's'}),

        ['<C-b>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i', 's'}),

        ['<Tab>'] = cmp.mapping(function(fallback)
            local col = vim.fn.col('.') - 1

            if cmp.visible() then
                cmp.select_next_item(select_opts)
            elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                fallback()
            else
                cmp.complete()
            end
        end, {'i', 's'}),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item(select_opts)
            else
                fallback()
            end
        end, {'i', 's'})
    }
})

local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = ''
    })
end

sign({
    name = 'DiagnosticSignError',
    text = '✘'
})
sign({
    name = 'DiagnosticSignWarn',
    text = '▲'
})
sign({
    name = 'DiagnosticSignHint',
    text = '⚑'
})
sign({
    name = 'DiagnosticSignInfo',
    text = ''
})

-- Diagnostics
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = true
})

