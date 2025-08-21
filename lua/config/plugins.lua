return {
	--
	-- Lazyvim and plugins
	{
		"LazyVim/LazyVim",
		import = "lazyvim.plugins",
		opts = {
			colorscheme = "catppuccin",
			ui = {
				border = "rounded",
			},
		},
	},
	--
	-- disable bufferline (tabs at top)
	{
		"akinsho/bufferline.nvim",
		enabled = false,
	},
	--
	-- disable blink text snippets
	{
		"saghen/blink.cmp",
		opts = {
			sources = {
				default = { "lsp", "path", "buffer" },
			},
		},
	},
	--
	-- colorscheme
	{
		"catppuccin",
		priority = 1000,
		opts = {
			transparent_background = true,
			float = {
				transparent = true,
			},
		},
	},
	--
	-- cleaner dashboard
	{
		"snacks.nvim",
		opts = {
			dashboard = {
				enabled = true,
				sections = {
					{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
					{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
					{ section = "startup" },
				},
			},
		},
	},
	--
	-- floating filepicker
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				sources = {
					explorer = {
						layout = { preset = "default", preview = true },
						auto_close = true,
					},
				},
			},
		},
	},
	--
	-- LSP configuration
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				border = "rounded",
			},
		},
	},
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			opts.lsp.signature = {
				auto_open = { enabled = false },
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
			servers = {
				gopls = {
					settings = {
						gopls = {
							usePlaceholders = false,
							completeUnimported = true,
						},
					},
				},
			},
		},
	},
	--
	-- lualine customisation
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.sections.lualine_a = {
				{
					"mode",
					fmt = function(res)
						return res:sub(1, 1)
					end,
				},
			}
			return opts
		end,
	},
	--
	-- trouble
	{
		"folke/trouble.nvim",
		opts = {
			position = "float",
		},
	},
}
