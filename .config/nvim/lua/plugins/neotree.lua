return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		opts = function()
			vim.keymap.set('n', '<leader><leader>', ':Neotree filesystem toggle left<CR>', {})
			vim.keymap.set('n', '<leader>ee', ':Neotree filesystem focus left<CR>', {})
			vim.keymap.set('n', '<leader>eg', ':Neotree git_status toggle float<CR>', {})
			vim.keymap.set('n', '<leader>eb', ':Neotree buffers toggle float<CR>', {})

			local neotree = require("neo-tree")
			neotree.setup({
				source_selector = {
					winbar = false,
					statusline = true,
					sources = {
						{ source = "filesystem" },
						{ source = "buffers" },
						{ source = "git_status" }
					}
				}
			})
		end
	}
}
