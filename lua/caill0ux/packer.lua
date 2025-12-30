-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- Telescope (research in files)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }

	}
	-- Theme
	use {
		'folke/tokyonight.nvim',
		as = 'tokyonight',
		config = function()
			vim.cmd("colorscheme tokyonight-night")
		end
	}
	-- Code Highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	}
	-- Kinda useless
	use('nvim-treesitter/playground')
	use('theprimeagen/vim-be-good')
	-- Go Back and forth to files
	use('theprimeagen/harpoon')
	-- Undo History like git
	use('mbbill/undotree')
	-- Git
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'}
		}
	}
    ---------------------------------------------------------------------------------------------------------
    --------------------------------------------- COMPLETION RELATED ----------------------------------------
    use "hrsh7th/cmp-buffer"                  -- buffer completions
    use "hrsh7th/cmp-path"                    -- path completions
    use "hrsh7th/cmp-cmdline"                 -- cmdline completions
    use "saadparwaiz1/cmp_luasnip"            -- snippet completions
    use "hrsh7th/cmp-nvim-lua"                -- lua vim completions
    use "hrsh7th/cmp-nvim-lsp-signature-help" -- function parameters completions
    ---------------------------------------------------------------------------------------------------------
    --------------------------------------------- SNIPPETS RELATED ------------------------------------------
    use "L3MON4D3/LuaSnip"             -- snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of ready-to-use snippets
    use "jose-elias-alvarez/null-ls.nvim"   -- for linting purposes
    ---------------------------------------------------------------------------------------------------------
    ------------------------------------------------ LSP RELATED --------------------------------------------
    use "folke/trouble.nvim"                -- for LSP\Linter warnings\errors
    use "Hoffs/omnisharp-extended-lsp.nvim" -- for proper go-to-definition support for omnisharp
    ---------------------------------------------------------------------------------------------------------
    ----------------------------------------------- UI RELATED ----------------------------------------------
    use 'nvim-tree/nvim-tree.lua'     -- fancy file explorer
    use 'nvim-lualine/lualine.nvim'   -- fancy status bar
    use {
        'akinsho/bufferline.nvim', -- tabline plugin
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {
        "akinsho/toggleterm.nvim", -- terminal integration within nvim
        tag = '*',
        config = function() require("toggleterm").setup() end
    }
end)
