return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("plugins.config.colorscheme")
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("plugins.config.notify")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    after = "catppuccin",
    config = function()
      require("plugins.config.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.config.lualine")
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({
        ui = {
          kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
        },
      })
    end,
  },
  -- Git
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.config.git.signs")
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
    enabled = true,
    event = "BufRead",
    config = function()
      require("plugins.config.git.diffview")
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    config = function()
      require("plugins.config.git.conflict")
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },
}
