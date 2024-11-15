return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = function()
			local configs = require("catppuccin")

			configs.setup({
				no_italic = true
			})
		end,
		init = function()
			vim.cmd.colorscheme "catppuccin-mocha"
		end
	}
}
