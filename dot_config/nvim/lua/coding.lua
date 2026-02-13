require('nvim-treesitter').setup {
  install_dir = vim.fn.stdpath('data') .. '/site',
  highlight = {
    enable = true
  },
}

require('nvim-treesitter').install { 'lua', 'bash', 'python', 'c_sharp', 'javascript', 'html', 'css', 'markdown', 'yaml', 'toml' }

-- highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

-- folds
-- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
-- vim.wo[0][0].foldmethod = 'expr'

-- indentation
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "bashls", "pyright", "omnisharp", "ts_ls" },
})

-- require("mason-lspconfig").setup_handlers({
--   function(server)
--     require('lspconfig')[server].setup {}
--   end,
-- })

require("blink.cmp").setup({
 -- fuzzy = {
 --   implementation = "lua",
 -- },
  keymap = { preset = "super-tab" },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  completion = {
    accept = { auto_brackets = { enabled = true } },
  },
  appearance = {
    nerd_font_variant = "mono",
  },
})
