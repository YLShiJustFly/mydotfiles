function lualine()
    vim.cmd [[packadd! lualine.nvim]]
    vim.cmd [[packadd! lualine-lsp-progress]]
end

lualine()
local colors = {
  color0   = "#e4e4e4",
  color1   = "#3886ab",
  color3   = "#dddddd", --a区域的背景
  color2   = "#464646", --a区域的字
  color4   = "#0e749f", --b区域的背景
  color5   = "#dddddd", --b区域的字
  color6   = "#0a4b74", --c区域的背景
  color7   = "#eaeaea", --c区域的字
  color10  = "#859900",
  color11  = "#586e75",
  color12  = "#839496",
  color15  = "#dc322f",
}

local solarized_custom = {
  normal = {
    c = { fg = colors.color7, bg = colors.color6 },
    a = { fg = colors.color2, bg = colors.color3 , gui = "bold", },
    b = { fg = colors.color5, bg = colors.color4 },
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
local gps = require("nvim-gps")
require("lualine").setup({
  options = {
    icons_enabled = true,
    theme  = solarized_custom,
    section_separators = { left = '▶', right = '◀'},
    component_separators = { left = '▶', right = '◀'},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "filename"},
    lualine_c = {'lsp_progress'},
    lualine_x = {
      { gps.get_location, cond = gps.is_available },
      "encoding",
      "fileformat",
    },
    lualine_y = {},
    lualine_z = {
      "filetype",
      "location",
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        color = "ErrorMsg"
      },
    },
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
    extensions = {'quickfix', 'fugitive'},
})
