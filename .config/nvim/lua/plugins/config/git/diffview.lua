local present, diffview = pcall(require, "diffview")

if not present then
  return
end

diffview.setup({
  diff_binaries = false,
  enchanced_diff_hl = false,
  git_cmd = { "git" },
  hg_cmd = { "hg" },
  use_icons = true,
  show_help_hints = true,
  watch_index = true,

  icons = { -- Only applies when use_icons is true.
    folder_closed = "",
    folder_open = "",
  },
  signs = {
    fold_closed = "",
    fold_open = "",
    done = "✓",
  },
})
