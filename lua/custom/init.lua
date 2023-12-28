local M = {}

local mappings = require 'custom.mapping'

M.setup = function()
  mappings.setup()
  vim.cmd.colorscheme 'gruvbox'
  -- vim.o.autoindent = false
  -- vim.o.smartindent = false
  -- vim.o.cindent = false
  local trouble = require("trouble.providers.telescope")

  local telescope = require("telescope")
  telescope.setup {
    defaults = {
      mappings = {
        i = { ["<c-q>"] = trouble.open_with_trouble },
        n = { ["<c-q>"] = trouble.open_with_trouble },
      },
    },
  }
end



vim.o.hlsearch = true
vim.o.incsearch = true

return M
