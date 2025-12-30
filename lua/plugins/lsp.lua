-- LSP and completion setup
return {
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		lazy = true,
		config = false,
		init = function()
			vim.g.lsp_zero_extend_cmp_capabilities = 1
		end,
	},
	{
		'neovim/nvim-lspconfig',
		cmd = { 'LspInfo', 'LspStart' },
		event = { 'BufReadPre', 'BufNewFile' },
		dependencies = {
			{ 'folke/neodev.nvim', opts = {} },
			'cmp-nvim-lsp',
		},
	},
	{
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			'lsp-zero.nvim',
			--- Completion sources
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'saadparwaiz1/cmp_luasnip',
		},
	},
	{
		'L3MON4D3/LuaSnip',
		dependencies = { 'rafamadriz/friendly-snippets' },
		build = 'make install_jsregexp',
	},
	{
		'williamboman/mason.nvim',
		cmd = { 'Mason', 'MasonInstall', 'MasonUninstall' },
	},
	{
		'williamboman/mason-lspconfig.nvim',
		cmd = { 'LspInstall', 'LspUninstall' },
		dependencies = 'mason.nvim',
	},
	{
		'folke/trouble.nvim',
		cmd = { 'Trouble', 'TroubleToggle' },
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'Hoffs/omnisharp-extended-lsp.nvim',
		dependencies = 'nvim-lspconfig',
	},
	{
		'jose-elias-alvarez/null-ls.nvim',
		event = { 'BufReadPre', 'BufNewFile' },
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
}
