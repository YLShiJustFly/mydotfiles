-- =============================================================================
-- lightline to lualine theme converter
-- Author: shadman
-- License: MIT License
-- =============================================================================

-- Instructions

-- 1. Source this file in neovim with lightline installed
-- 2. execute :lua light2lualine_theme_converter('theme_name')

local M = {}

function M.convert(name)
  -- Change this to wherever you wana place the output files
  local install_dir = nil
  local var_name = "lightline#colorscheme#"..name.."#palette"
  vim.cmd("let tmp = "..var_name)
  local theme = vim.g[var_name]

  local lua_theme = {}

  for mode, sections in pairs(theme) do
    if mode ~= 'tabline' then
      lua_theme[mode] = {}
      lua_theme[mode].a = {}
      lua_theme[mode].b = {}
      lua_theme[mode].c = {}
      lua_theme[mode].a.fg = sections['left'][1][1]
      lua_theme[mode].a.bg = sections['left'][1][2]
      if sections['left'][2] then
        lua_theme[mode].b.fg = sections['left'][2][1]
        lua_theme[mode].b.bg = sections['left'][2][2]
      elseif sections['right'] then
        lua_theme[mode].b.fg = sections['right'][1][1]
        lua_theme[mode].b.bg = sections['right'][1][2]
      end
      if sections['middle'] then
        lua_theme[mode].c.fg = sections['middle'][1][1]
        lua_theme[mode].c.bg = sections['middle'][1][2]
      end
    end
  end

  local colors = {}
  local next_color = 0

  local function color_insert(color)
    for k, v in pairs(colors) do
      if v == color then
        return nil
      end
    end
    colors["color"..next_color] = color
    next_color = next_color + 1
    return nil
  end

  local function get_color(color)
    for k, v in pairs(colors) do
      if v == color then
        return 'colors.'..k
      end
    end
    colors["color"..next_color] = color
    next_color = next_color + 1
    return color
  end

  for mode, sections in pairs(lua_theme) do
    for component, parts in pairs(sections) do
      color_insert(parts.fg)
      color_insert(parts.bg)
    end
  end

  local file
  if install_dir then
    file = io.open(install_dir..name..'.lua', 'w')
  else
    file = io.open(name..'.lua', 'w')
  end
  file:write([[
-- =============================================================================
-- Genarated by lightline to lualine theme converter
--   https://gist.github.com/shadmansaleh/000871c9a608a012721c6acc6d7a19b9
-- License: MIT License
-- =============================================================================
]])
  file:write('local colors = {\n')
  for k, v in pairs(colors) do
    file:write(string.format('  %-8s = "%s",\n', k, v))
  end
  file:write('}\n\n')


  file:write('local '..name..' = {\n')
  for mode, sections in pairs(lua_theme) do
    file:write('  '..mode..' = {\n')
    for component, parts in pairs(sections) do
      if parts.fg ~= nil and parts.bg ~= nil then
        if component == 'a' then
          file:write(string.format('    %s = { fg = %s, bg = %s , gui = "bold", },\n',
            component, get_color(parts.fg), get_color(parts.bg)))
        else
          file:write(string.format('    %s = { fg = %s, bg = %s },\n',
            component, get_color(parts.fg), get_color(parts.bg)))
        end
      end
    end
    file:write('  },\n')
  end
  file:write('}\n\n')
  file:write('return '..name)
  file:close()
end

light2lualine_theme_converter = M.convert
return M
