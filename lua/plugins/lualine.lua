return {
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
}
