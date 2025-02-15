return {
  vim.keymap.set('n', '<space><space>x', '<cmd>source %<CR>'),
  vim.keymap.set('n', '<space>tt', '<cmd>Floaterminal<CR>'),
  -- vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file [E]xplorer tree' }),
  vim.keymap.set('n', '<leader>e', '<cmd>Oil --float .<CR>', { desc = 'Open parent directory' }),
  -- vim.keymap.set('n', '<leader>bb', Build, { desc = 'execute build.bat' })
}
