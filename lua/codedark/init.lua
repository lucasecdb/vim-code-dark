-- Colorscheme name:        codedark
-- Description:             Dark color scheme for Vim and vim-airline, inspired by Dark+ in Visual Studio Code
-- Author:                  Tomáš Iser
-- Website:                 https://github.com/lucasecdb/vim-codedark

local util = require('codedark.util')

-- Load the theme
local set = function ()
    util.load()
end

return { set = set }
