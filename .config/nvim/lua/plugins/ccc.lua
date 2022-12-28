local ccc = require("ccc")
local mapping = ccc.mapping

ccc.setup({
   mappings = {
    ["q"] = mapping.quit,
    ["<CR>"] = mapping.complete,
    ["i"] = mapping.toggle_input_mode,
    ["o"] = mapping.toggle_output_mode,
    ["a"] = mapping.toggle_alpha,
    ["g"] = mapping.toggle_prev_colors,
    ["w"] = mapping.goto_next,
    ["b"] = mapping.goto_prev,
    ["W"] = mapping.goto_tail,
    ["B"] = mapping.goto_head,
    ["l"] = mapping.increase1,
    ["d"] = mapping.increase5,
    [","] = mapping.increase10,
    ["h"] = mapping.decrease1,
    ["s"] = mapping.decrease5,
    ["m"] = mapping.decrease10,
    ["H"] = mapping.set0,
    ["M"] = mapping.set50,
    ["L"] = mapping.set100,
    ["0"] = mapping.set0,
    ["1"] = function()
      ccc.set_percent(10)
    end,
    ["2"] = function()
      ccc.set_percent(20)
    end,
    ["3"] = function()
      ccc.set_percent(30)
    end,
    ["4"] = function()
      ccc.set_percent(40)
    end,
    ["5"] = mapping.set50,
    ["6"] = function()
      ccc.set_percent(60)
    end,
    ["7"] = function()
      ccc.set_percent(70)
    end,
    ["8"] = function()
      ccc.set_percent(80)
    end,
    ["9"] = function()
      ccc.set_percent(90)
    end,
  },
})

