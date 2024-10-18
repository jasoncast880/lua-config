vim.cmd("set number")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', ':Ex<CR>', {})

vim.g.netrw_liststyle = 3
vim.g.netrw_timefmt = "%Y-%m-%d %H:%M"
