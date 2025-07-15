return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		opts = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				-- A list of parser names, or "all" (the listed parsers MUST always be installed)
				ensure_installed = { "c", "lua", "vim", "vimdoc" },
				auto_install = true,
				-- List of parsers to ignore installing (or "all")
				ignore_install = {},
				highlight = { enable = true },
				indent = { enable = true }
			})
		end
	},
}
