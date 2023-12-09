return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.config.telescope")
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("plugins.config.noice")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VimEnter",
    config = function()
      require("plugins.config.treesitter")
    end,
  },
}
