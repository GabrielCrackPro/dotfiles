require("colorizer").setup({
  filetypes = { "*" },
  user_default_options = {
    RGB = true, -- #RGB hex codes
    RRGGBB = true, -- #RRGGBB hex codes
    -- can be a boolean, or:
    -- table like {Name='#colorhex'},
    -- function returning such table (for colorscheme-dependant updates),
    -- "nvim": for all neovim "Name" codes like Blue ...,
    -- "tailwind" (_lsp/_both): for tailwind/css-like color names
    names = "nvim",
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    AARRGGBB = true, -- 0xAARRGGBB hex codes
    rgb_fn = false, -- CSS rgb() and rgba() functions
    hsl_fn = false, -- CSS hsl() and hsla() functions
    css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
    -- Available modes for `mode`: foreground, background,  virtualtext
    mode = "background", -- Set the display mode.
    -- Available methods are false / true / "normal" / "lsp" / "both"
    -- True is same as normal
    -- parsers can contain values used in |user_default_options|
    sass = { enable = false }, -- Enable sass colors
    virtualtext = "■",
    -- update color values even if buffer is not focused
    always_update = false,
  },
  -- all the sub-options of filetypes apply to buftypes
  buftypes = {},
})

vim.cmd("ColorizerToggle")
