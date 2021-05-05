local colors = {
  -- General appearance colors
  none = 'NONE',
  front = '#d4d4d4',
  back = '#1e1e1e',

  tab_current = '#1e1e1e',
  tab_other = '#2d2d2d',
  tab_outside = '#252526',

  left_dark = '#252526',
  left_mid = '#373737',
  left_light = '#3f3f46',

  popup_front = '#bbbbbb',
  popup_back = '#2d2d30',
  popup_highlight_blue = '#073655',
  popup_highlight_gray = '#3d3d40',

  split_light = '#898989',
  split_dark = '#444444',
  split_thumb = '#424242',

  cursor_dark_dark = '#2c2c2c',
  cursor_dark = '#51504f',
  cursor_light = '#aeafad',
  selection = '#264f78',
  line_number = '#5a5a5a',

  diff_red_dark = '#4b1818',
  diff_red_light = '#6f1313',
  diff_red_light_light = '#fb0101',
  diff_green_dark = '#373d29',
  diff_green_light = '#4b5632',

  search_current =  '#4b5632',
  search = '#264f78',

  -- Syntax colors
  gray = '#808080',
  violet = '#646695',
  blue = '#569cd6',
  dark_blue = '#4fc1ff',
  light_blue = '#9cdcfe',
  green = '#6a9955',
  blue_green = '#4ec9b0',
  light_green = '#b5cea8',
  red = '#f44747',
  orange = '#ce9178',
  light_red = '#d16969',
  yellow_orange = '#d7ba7d',
  yellow = '#dcdcaa',
  pink = '#c586c0'
}

if vim.fn.exists('g:codedark_conservative') == false then
  vim.g.codedark_conservative = 0
end

if vim.g.codedark_conservative == 1 then colors.light_blue = colors.front end
if vim.g.codedark_conservative == 1 then colors.dark_blue = colors.front end
if vim.g.codedark_conservative == 1 then colors.yellow = colors.front end
if vim.g.codedark_conservative == 1 then colors.light_red = colors.orange end
if vim.g.codedark_conservative == 1 then colors.pink = colors.blue end

return colors
