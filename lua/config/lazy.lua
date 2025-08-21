require("config/bootstrap")
local plugins = require("config/plugins")
local opts = {
	ui = {
		border = "rounded",
	},
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
}
require("lazy").setup(plugins, opts)
