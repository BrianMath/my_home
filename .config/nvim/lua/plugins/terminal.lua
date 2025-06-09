return {
	{
		"akinsho/toggleterm.nvim",
		version = "2.13.*",
		opts = function()
			local map = vim.keymap.set
			local opts = { noremap = true, silent = true }
		
			-- Toggle terminal on/off
			map('n', "<C-\\><Down>", '<Cmd>ToggleTerm<CR>', opts)
			map('n', "<C-\\><Right>", '<Cmd>ToggleTerm direction=vertical<CR>', opts)
			map('n', "<C-\\><Up>", '<Cmd>ToggleTerm direction=float<CR>', opts)
		end
	}
}
