vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set tabstop=4")

vim.wo.number = true
vim.opt.autowrite = true

require("config.lazy")