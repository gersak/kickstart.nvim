local M = {}

local mappings = require 'custom.mapping'

M.setup = function()
  mappings.setup()
  vim.cmd.colorscheme 'pop-punk'
  -- vim.o.autoindent = false
  -- vim.o.smartindent = false
  -- vim.o.cindent = false
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.number = false
  vim.o.splitbelow = false
  vim.o.splitright = false
  require('lspconfig').dartls.setup {}
  local trouble = require 'trouble.sources.telescope'
  local telescope = require 'telescope'
  telescope.setup {
    defaults = {
      mappings = {
        i = { ['<c-q>'] = trouble.open },
        n = { ['<c-q>'] = trouble.open },
      },
    },
  }
  -- require('ibl').update { enabled = false }
end

vim.o.hlsearch = true
vim.o.incsearch = true

return M
