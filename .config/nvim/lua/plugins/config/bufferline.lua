local present, bufferline = pcall(require, "bufferline")

if not present then
  return
end

bufferline.setup({
  options = {
    always_show_bufferline = true,
    close_command = function(n)
      require("mini.bufremove").delete(n, false)
    end,
    diagnostics = "nvim_lsp",
    show_close_icon = false,
    show_buffer_close_icons = false,
    mode = "buffers",
    sort_by = "insert_at_end",
    tab_size = 22,
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level)
      ---@diagnostic disable-next-line: undefined-field
      local icon = level:match("error") and " " or ""
      return " " .. icon .. " " .. count
    end,
    separator_style = { "", "" },
    indicator = {
      style = "underline",
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      },
    },
  },
})
