require("telescope").setup({})
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function()
	telescope.live_grep({ hidden = true })
end, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Help tags" })
vim.keymap.set("n", "<leader>fr", telescope.resume, { desc = "Resume" })

require("oil").setup({})

vim.keymap.set("n", "-", ":Oil<CR>")
vim.keymap.set("n", "<leader>e", ":Oil .<cr>", { desc = "Explorer current dir" })
