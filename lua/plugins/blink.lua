return {
	"saghen/blink.cmp",
	opts = {
		completion = {
			menu = {
				border = "rounded",
				winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
				scrollbar = true,
			},
			list = {
				selection = {
					auto_insert = false,
				},
			},
		},
		keymap = {
			preset = "default",
			["<Tab>"] = { "select_and_accept", "fallback" },
		},
	},
}
