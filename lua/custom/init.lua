local M = {}

local mappings = require 'custom.mapping'

M.setup = function()
  mappings.setup()
  vim.cmd.colorscheme 'gruvbox'
  vim.o.hlsearch = true
  vim.o.incsearch = true
  vim.o.autoindent = false
  vim.o.smartindent = false
  vim.o.cindent = false
end

return M
