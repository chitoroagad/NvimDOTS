local M = {
	

	{ 'nvim-treesitter/playground' },

	{ 'theprimeagen/harpoon' },

	{ 'mbbill/undotree' },

	-- git stuff
	{ 'tpope/vim-fugitive' },
	{ 'tpope/vim-rhubarb' },

	{ 'tpope/vim-sleuth' },

	-- LSP stuff
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			-- status updates
			{ 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
			'folke/neovim',
		},
	},

	-- auto comp
	{ 
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			'hrsh7th/cmp-nvim-lsp',

			'rafamadriz/friendly-snippets',
		},
	},

	{'folke/which-key.nvim', opts = {} },
	{
		'lewis6991/gitsigns.nvim',
		opts = {
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
			on_attach = function(bufnr)
				vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, { buffer = bufnr, desc = 'Preview git hunk' })
				local gs = package.loaded.gitsigns
				vim.keymap.set({'n', 'v'}, ']c', function()
					if vim.wo.diff then
						return ']c'
					end
					vim.schedule(function()
						gs.next_hunk()
					end)
					return '<Ignore>'
				end, { expr = true, buffer = bufnr, desc = 'Jump to previous hunk' })
			end,
		},
	},

	{
		'nvim-lualine/lualine.nvim',
		opts = {
			options = {
				icons_enabled = true,
				theme = 'catppuccin',
				component_separators = '|',
				section_separators = '',
			},
		},
	},

	{
		'lukas-reineke/indent-blankline.nvim',
		main = 'ibl',
		opts = {},
	},

	{ 
		'numToStr/Comment.nvim',
		opts = {},
		lazy = false,
	},

}



return M
