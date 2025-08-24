return {
	"folke/noice.nvim",
	opts = function(_, opts)
		opts.lsp.signature = {
			auto_open = { enabled = false },
		}
		opts.presets.lsp_doc_border = true
	end,
}
