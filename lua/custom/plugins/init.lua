-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	"Olical/conjure",
	"PaterJason/cmp-conjure",
	{"tpope/vim-repeat", lazy = false},
	{"tpope/vim-sensible", lazy = false},
	{"tpope/vim-unimpaired", lazy = false},
	{"tpope/vim-surround", lazy = false},
	{"bignimbus/pop-punk.vim", lazy = false},
	{"sainnhe/everforest", lazy = false},
	{"morhetz/gruvbox", lazy = false},
	{"vim-scripts/Fruidle", lazy = false},
	{"ggandor/leap.nvim",
		lazy = false,
		config = function ()
			require('leap').add_default_mappings()
			require('leap').init_highlight(true)
		end
	},
	{"tpope/vim-sexp-mappings-for-regular-people",lazy=false},
	{
		"mbbill/undotree",
		lazy=false,
		keys = {
			{"U", "<cmd>UndotreeToggle<CR>"}
		}
	},
}
