local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup {
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  -- load all lua files in the plugins directory
  { import = 'plugins' },
}

--vim.cmd 'hi LineNrAbove guifg=#C8C093'
--vim.cmd 'hi LineNr guifg=#c5c9c5'
--vim.cmd 'hi LineNrBelow guifg=#C8C093'
-- vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#141414', ctermbg = 'BLACK' })
vim.cmd 'colorscheme gruvbox'
vim.cmd 'hi Cursor guifg=#303030 guibg=#00ff33'
--vim.cmd 'hi Normal guibg=#1c1c1c ctermbg=GREY'
--vim.cmd 'hi NormalNC guibg=#1c1c1c ctermbg=GREY
