return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
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
      require("lspsaga").setup({})
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
    cmd = {
      "LazyGit",
      "LazyGitCurrentFile",
      "LazyGitFilterCurrentFile",
      "LazyGitFilter",
    },
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 0.9
    end,
  },
}
