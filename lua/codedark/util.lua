local util = {}
local theme = require("codedark.theme")

-- Go trough the table and highlight the group with the color values
util.highlight = function(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)

  if color.link then
    vim.cmd("highlight! link " .. group .. " " .. color.link)
  end
end

-- Only define codedark if it's the active colorshceme
function util.on_color_scheme()
  if vim.g.colors_name ~= "codedark" then
    vim.cmd([[autocmd! Codedark]])
    vim.cmd([[augroup! Codedark]])
  end
end

-- Change the background for the terminal and packer windows
util.contrast = function()
  vim.cmd([[augroup Codedark]])
  vim.cmd([[  autocmd!]])
  vim.cmd([[  autocmd ColorScheme * lua require("codedark.util").on_color_scheme()]])
  vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
  vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
  vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
  vim.cmd([[augroup end]])
end

-- Load the theme
function util.load()
  -- Set the theme environment
  vim.o.background = "dark"
  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "codedark"

  vim.o.termguicolors = true

  -- Load plugins and treesitter async
  local async
  async = vim.loop.new_async(vim.schedule_wrap(function()
    -- import tables for plugins and treesitter
    local plugins = theme.load_plugins()
    local treesitter = theme.load_tree_sitter()

    for group, colors in pairs(plugins) do
      util.highlight(group, colors)
    end

    for group, colors in pairs(treesitter) do
      util.highlight(group, colors)
    end

    async:close()
  end))

  -- load base theme
  local editor = theme.load_editor()
  local syntax = theme.load_syntax()

  for group, colors in pairs(editor) do
    util.highlight(group, colors)
  end

  for group, colors in pairs(syntax) do
    util.highlight(group, colors)
  end

  async:send()
end

return util
