-- =============================================================================
-- Genarated by lightline to lualine theme converter
--   https://gist.github.com/shadmansaleh/000871c9a608a012721c6acc6d7a19b9
-- License: MIT License
-- =============================================================================
local colors = {
  color2   = "#002b36",
  color3   = "#268bd2",
  color4   = "#657b83",
  color7   = "#d33682",
  color10  = "#859900",
  color11  = "#586e75",
  color12  = "#839496",
  color15  = "#dc322f",
  color0   = "#93a1a1",
  color1   = "#073642",
}

local solarized = {
  normal = {
    c = { fg = colors.color0, bg = colors.color1 },
    a = { fg = colors.color2, bg = colors.color3 , gui = "bold", },
    b = { fg = colors.color2, bg = colors.color4 },
  },
  visual = {
    a = { fg = colors.color2, bg = colors.color7 , gui = "bold", },
    b = { fg = colors.color2, bg = colors.color4 },
  },
  insert = {
    a = { fg = colors.color2, bg = colors.color10 , gui = "bold", },
    b = { fg = colors.color2, bg = colors.color4 },
  },
  inactive = {
    c = { fg = colors.color11, bg = colors.color1 },
    a = { fg = colors.color12, bg = colors.color1 , gui = "bold", },
    b = { fg = colors.color12, bg = colors.color1 },
  },
  replace = {
    a = { fg = colors.color2, bg = colors.color15 , gui = "bold", },
    b = { fg = colors.color2, bg = colors.color4 },
  },
}

return solarized