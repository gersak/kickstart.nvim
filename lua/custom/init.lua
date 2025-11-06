local M = {}

local mappings = require 'custom.mapping'

M.setup = function()
  mappings.setup()
  vim.cmd.colorscheme 'catppuccin'
  vim.o.guicursor = 'a:block-Cursor'
  vim.api.nvim_set_hl(0, 'Cursor', { fg = '#000000', bg = '#ff0000' })

  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.number = false
  vim.o.splitbelow = false
  vim.o.splitright = false

  -- ✅ NEW LSP API
  local cfg = vim.lsp.config

  vim.lsp.start(cfg.pyright)
  vim.lsp.start(cfg.dartls)
  vim.lsp.start(cfg.ts_ls) -- tsserver → ts_ls

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
end

vim.o.hlsearch = true
vim.o.incsearch = true

return M
