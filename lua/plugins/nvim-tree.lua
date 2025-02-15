return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {
        renderer = {
          icons = {
            glyphs = {
              folder = {
                arrow_closed = '📁', -- closed folder icon
                arrow_open = '📂', -- open folder icon
              },
            },
          },
        },
        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
        git = {
          ignore = false, -- show .gitignored files.
        },
      }
    end,
  },
}
