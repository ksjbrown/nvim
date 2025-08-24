return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			float = {
				border = "rounded",
			},
		},
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
}
