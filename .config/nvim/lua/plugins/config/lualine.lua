local present, lualine = pcall(require, "lualine")
local lazy_present, lazy_status = pcall(require, "lazy.status")

if not present then
  return
end

if not lazy_present then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "catppuccin",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        sources = { "nvim_lsp" },
        sections = { "error", "warn", "info", "hint" },
        colored = false,
        update_in_insert = true,
      },
    },
    lualine_c = {
      { "filetype", colored = true, icon_only = true },
      {
        "filename",
        file_status = true,
        newfile_status = true,
        path = 0,
        shorting_target = 40,
        symbols = {
          modified = "󰷉",
          readonly = "",
          unnamed = "",
          newfile = "󰝒",
        },
      },
    },
    lualine_x = {
      "selectioncount",
      "searchcount",
      {
        lazy_status.updates,
        cond = lazy_status.has_updates,
        color = { fg = "#ff9e64" },
      },
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = { "nvim-tree", "lazy", "mason" },
})
