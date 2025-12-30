-- UI-related plugins
return {
	{
		'nvim-tree/nvim-tree.lua',
		cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'akinsho/bufferline.nvim',
		event = 'VeryLazy',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'akinsho/toggleterm.nvim',
		cmd = 'ToggleTerm',
		config = function()
			require('toggleterm').setup()
		end
	},
}
