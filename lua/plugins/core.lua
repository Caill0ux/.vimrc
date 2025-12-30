-- Core plugins (telescope, theme, treesitter, etc.)
return {
	-- Telescope (research in files)
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	-- Theme
	{
		'folke/tokyonight.nvim',
		name = 'tokyonight',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight-night")
		end
	},

	-- Code Highlighting
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		event = { 'BufReadPre', 'BufNewFile' },
	},

	-- Go Back and forth to files
	'theprimeagen/harpoon',

	-- Undo History like git
	'mbbill/undotree',

	-- Git
	'tpope/vim-fugitive',
}
