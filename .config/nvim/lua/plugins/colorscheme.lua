return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = function()
			local configs = require("catppuccin")

			configs.setup({
				flavour = "mocha",
				no_italic = true,
				integrations = {
					neotree = true,
					treesitter = true
				}
			})
		end,
		init = function()
			vim.cmd.colorscheme "catppuccin-mocha"
		end
	}
}
