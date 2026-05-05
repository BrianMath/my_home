return {
	{
		"akinsho/toggleterm.nvim",
		version = "2.13.*",
		opts = function()
			local map = vim.keymap.set
			local opts = { noremap = true, silent = true }
		
			-- Toggle terminal on/off
			map('n', "<A-\\>", '<Cmd>ToggleTerm<CR>', opts)
		end
	}
}
