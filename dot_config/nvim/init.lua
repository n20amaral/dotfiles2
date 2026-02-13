vim.pack.add({
  'folke/tokyonight',
  'catppuccin/nvim'
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.schedule(vim.cmd.pack.update)
  end,
})

require('catppuccin').setup({ flavour = 'mocha' })

vim.api.nvim_create_user_command('Tokyo', 'colorscheme tokyonight', {})
vim.api.nvim_create_user_command('Cat', 'colorscheme catppuccin', {})
