return {
  {
    'gitpushjoe/zuzu.nvim',
    config = function()
      require('zuzu').setup {}
      vim.o.shell = 'pwsh.exe'
      vim.o.shellxquote = ''
      vim.o.shellcmdflag = '-NoLogo -Command '
      vim.o.shellquote = ''
      vim.o.shellpipe = '| Out-File -Encoding UTF8 %s'
      vim.o.shellredir = '| Out-File -Encoding UTF8 %s'
    end,
  },
}
