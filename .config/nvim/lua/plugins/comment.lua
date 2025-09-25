return {
	{
		"numToStr/Comment.nvim",
		opts = {
			---LHS of toggle mappings in NORMAL mode
			toggler = {
				---Line-comment toggle keymap
				line = 'gcc',
				---Block-comment toggle keymap
				block = '<S-c>',
			},
			---LHS of operator-pending mappings in NORMAL and VISUAL mode
			opleader = {
				---Line-comment keymap
				line = 'gc',
				---Block-comment keymap
				block = '<S-c>',
			},
		}
	}
}
