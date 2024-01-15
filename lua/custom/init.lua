local M = {}

local mappings = require 'custom.mapping'

M.setup = function()
  mappings.setup()
  vim.cmd.colorscheme 'gruvbox'
  -- vim.o.autoindent = false
  -- vim.o.smartindent = false
  -- vim.o.cindent = false
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
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
  require("ibl").update { enabled = false }
end



vim.o.hlsearch = true
vim.o.incsearch = true

return M
