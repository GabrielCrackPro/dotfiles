local present, tree = pcall(require, "nvim-tree")

if not present then
  return
end

local git_icons = {
  unstaged = "",
  staged = "",
  unmerged = "",
  renamed = "➜",
  untracked = "",
  deleted = "",
  ignored = "◌",
}

tree.setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
  view = {
    width = 30,
    side = "right",
    number = false,
    relativenumber = false,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    -- highlight_opened_files = true,
    root_folder_label = ":~",
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
      glyphs = {
        git = git_icons,
      },
    },
  },
})
