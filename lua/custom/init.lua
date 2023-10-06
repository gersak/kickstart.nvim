local M = {}

local mappings = require('custom.mapping')


M.setup = function ()
	mappings.setup()
	vim.cmd.colorscheme 'gruvbox'
end

vim.o.hlsearch = true
vim.o.incsearch = true

return M
