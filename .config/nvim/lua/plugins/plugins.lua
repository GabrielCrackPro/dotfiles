vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  use "wbthomason/packer.nvim" -- Packer
  use "olimorris/onedarkpro.nvim"    -- Packer
  use "ryanoasis/vim-devicons" -- Icons
  use "xiyaowong/nvim-transparent" -- Transparent background
  use "nvim-lualine/lualine.nvim" -- Statusline
  use "preservim/NERDTree" -- File explorer
  use "mattn/emmet-vim" -- Emmet vscode use in
  use "romgrk/barbar.nvim" -- Move between tabs
  use "pangloss/vim-javascript" -- Correct colors in js syntax
  use "nvim-treesitter/nvim-treesitter" -- Correct colored syntax
  use "nvim-lua/plenary.nvim" -- Necessary for telescope to woruse {
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
  use "lewis6991/gitsigns.nvim" -- Git integration
  use "wakatime/vim-wakatime" -- Register work time
  use "glepnir/dashboard-nvim" -- Custom start screen
  use "folke/which-key.nvim" -- Display keybindings
  use "windwp/nvim-autopairs" -- Put [], ),{} automatically
  use "windwp/nvim-ts-autotag" -- Close HTML and JSX tags automatically
  use "norcalli/nvim-colorizer.lua" -- Preview HEX colors
  use "folke/lsp-colors.nvim" -- Colors for lsp
  use "folke/lsp-trouble.nvim" -- Symbols for lsp
  use "lukas-reineke/indent-blankline.nvim" -- Show indent guides
  use "dinhhuy258/git.nvim" -- Work with git
  use "rcarriga/nvim-notify" -- Custom nvim notifications
  use "shoukoo/commentary.nvim" -- Comment single lines or blocks just with a keybinding
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
  use "MunifTanjim/nui.nvim" -- Necessary for regexplainer to work
  use "bennypowers/nvim-regexplainer" -- Show regexp explanation on hover
  use "lewis6991/spellsitter.nvim" -- Check spell mistakes
  use "nvim-lua/popup.nvim" -- Show telescope and more use ins in a popup window
  use "sudormrfbin/cheatsheet.nvim" -- Cheatsheet for learning keybindings
  use "stevearc/dressing.nvim" -- Necessary for cheatsheet to work
  use "ziontee113/icon-picker.nvim" -- Custom icon picker for telescope
  use "peitalin/vim-jsx-typescript" -- Typescript support
  use "maxmellon/vim-jsx-pretty" -- React support

  -- Formatting
  use("jose-elias-alvarez/null-ls.nvim")
  use("MunifTanjim/eslint.nvim")

  -- Completion use ins
  use "neovim/nvim-lspconfig"
  use "onsails/lspkind.nvim"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "williamboman/nvim-lsp-installer"
  use "rafamadriz/friendly-snippets"
  use {
    "glepnir/lspsaga.nvim",
    branch = "main",
  }
end)


-- Set up completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }

require("luasnip.loaders.from_vscode").lazy_load()

local cmp = require("cmp")
local luasnip = require("luasnip")

local select_opts = {
  behavior = cmp.SelectBehavior.Select,
}
-- LSP servers

local lspconfig = require("lspconfig")

local servers = { "tsserver", "eslint", "cssls", "html", "intelephense", "jedi_language_server", "zk", "jsonls" }

-- sumneko_lua separated config

lspconfig.sumneko_lua.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      runtime = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- Default config for all language servers

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
    root_dir = function()
      return vim.fn.getcwd() -- set up root directory to cwd by default
    end,
  })
end
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    {
      name = "path",
    },
    {
      name = "nvim_lsp",
      keyword_length = 1,
    },
    {
      name = "buffer",
      keyword_length = 1,
    },
    {
      name = "luasnip",
      keyword_length = 1,
    },
  },
  window = {
    documentation = cmp.config.window.bordered(),
  },
  formatting = {
    fields = { "menu", "abbr", "kind" },
    mode = "symbol_text",
    format = function(entry, item)
      item.kind = require("lspkind").presets.default[item.kind] .. " " .. item.kind
      local menu_icon = {
        nvim_lsp = "",
        luasnip = "",
        buffer = "﬘",
        path = "",
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  mapping = {
    ["<Up>"] = cmp.mapping.select_prev_item(select_opts),
    ["<Down>"] = cmp.mapping.select_next_item(select_opts),

    ["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
    ["<C-n>"] = cmp.mapping.select_next_item(select_opts),

    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),

    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({
      select = true,
    }),

    ["<C-d>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<C-b>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<Tab>"] = cmp.mapping(function(fallback)
      local col = vim.fn.col(".") - 1

      if cmp.visible() then
        cmp.select_next_item(select_opts)
      elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        fallback()
      else
        cmp.complete()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item(select_opts)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
})

local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = "",
  })
end

sign({
  name = "DiagnosticSignError",
  text = "✘",
})
sign({
  name = "DiagnosticSignWarn",
  text = "▲",
})
sign({
  name = "DiagnosticSignHint",
  text = "⚑",
})
sign({
  name = "DiagnosticSignInfo",
  text = "ℹ",
})

-- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = false,
  float = true,
})
