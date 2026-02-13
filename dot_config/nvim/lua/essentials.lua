require('telescope').setup {}
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')


require('oil').setup()
vim.keymap.set('n', '-', ':Oil<CR>')

