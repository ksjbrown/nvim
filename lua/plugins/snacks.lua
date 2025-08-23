return {
	"folke/snacks.nvim",
	opts = {
		indent = {
			enabled = false,
		},
		dashboard = {
			enabled = true,
			sections = {
				{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
				{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
				{ section = "startup" },
			},
		},
		picker = {
			sources = {
				explorer = {
					layout = { preset = "default", preview = true },
					auto_close = true,
				},
			},
		},
	},
}
