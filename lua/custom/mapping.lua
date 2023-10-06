
local M = {}

M.setup = function ()
	vim.keymap.set('n', "L", "<cmd>tabnext<cr>",{desc="GoTo left tab"})
	vim.keymap.set('n', "H", "<cmd>tabNext<cr>",{desc="GoTo Right tab"})
	vim.keymap.set('i', "<C- >", "<cmd>lua require('cmp').complete()<cr>",{desc="Autocomplete"})
	vim.keymap.set('n', "<leader>g", "<cmd>Git<cr>",{desc="Open fugitive GIT status"})
	vim.keymap.set('n', "<C-t>", "<cmd>tabnew<cr>",{desc="Create new tab"})
	vim.keymap.set('n', "<C-up>", "<cmd>res +5<cr>",{desc="Resize window vertical +5"})
	vim.keymap.set('n', "<C-down>", "<cmd>res -5<cr>",{desc="Resize window vertical -5"})
	vim.keymap.set('n', "<C-right>", "<cmd>res +5<cr>",{desc="Resize window horizontal +5"})
	vim.keymap.set('n', "<C-left>", "<cmd>res -5<cr>",{desc="Resize window horizontal -5"})
	vim.keymap.set('n', "<C-left>", "<cmd>res -5<cr>",{desc="Resize window horizontal -5"})


	vim.keymap.set('n', "<leader>ft", "<cmd>Telescope colorscheme<cr>",{desc="[F]ind [T]erminal"})
	vim.keymap.set('n', "[g", "<cmd>lua vim.diagnostic.goto_prev()<cr>",{desc="Find previous error"})
	vim.keymap.set('n', "]g", "<cmd>lua vim.diagnostic.goto_next()<cr>",{desc="Find next error"})

	vim.keymap.set('n', '#', '*N', {desc="Search for word under cursor", noremap = true, silent = true })
	vim.keymap.set('n', '<leader>8', ':nohlsearch<cr>', {desc= "Cancel highlight search", noremap = true, silent = true })
end

return M
