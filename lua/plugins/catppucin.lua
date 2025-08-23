return {
	"catppuccin",
	opts = {
		transparent_background = true,
		float = {
			transparent = true,
		},
	},
	priority = 1000,
	config = function(_, opts)
		require("catppuccin").setup(opts)
		local groups = {
			"NormalFloat",
			"Pmenu",
			"PmenuThumb",
			"Normal",
		}

		local function apply_highlights()
			for _, group in ipairs(groups) do
				vim.api.nvim_set_hl(0, group, { bg = "NONE" })
			end
			vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3b3844" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "#6c6783" })
			vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#575268", fg = "#cdd6f4" })
		end

		-- apply once at startup
		apply_highlights()

		-- reapply after colorscheme changes
		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "catppuccin",
			callback = apply_highlights,
		})
	end,
}
