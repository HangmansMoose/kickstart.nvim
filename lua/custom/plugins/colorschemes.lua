return {
  {
    'Mofiqul/adwaita.nvim',
    name = 'adwaita',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.adwaita_darker = true
      -- vim.cmd('colorscheme adwaita')
    end,
  },
  {
    '2giosangmitom/nightfall.nvim',
    name = 'nightfall',
    lazy = false,
    priority = 1000,
    config = function()
      require('nightfall').setup {}
    end,
  },
  {
    'alljokecake/naysayer-theme.nvim',
    name = 'naysayer',
    config = function()
      require('naysayer').setup {
        variant = 'main',
        dark_variant = 'main',
        disable_background = true,
        disable_italics = true,
        -- highlight_groups = {
        --  bg = '#161616',
        -- },
      }
    end,
  },
  {
    'arturgoms/moonbow.nvim',
    name = 'moonbow',
    config = function()
      require('moonbow').setup {
        italic = false,
        underline = false,
        strikethrough = false,
        values = {
          bg = '#141414',
          gutter_normal = '#141414',
          gutter_active = '#141414',
        },
      }
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        keywordStyle = { italic = false },
        commentStyle = { italic = false },
        colors = {
          theme = {
            dragon = {
              ui = {
                bg = '#141414',
                bg_gutter = '#141414',
                bg_p2 = '#111144', -- this controls current line colour
                pmenu = { bg = '#141414' },
              },
            },
            wave = {
              ui = {
                bg_gutter = '#141414',
                bg = '#141414',
                bg_p2 = '#111144',
                fg_reverse = '#DCD7BA',
                pmenu = { fg = '#c5c9c5', bg = '#181818' },
                float = { fg = '#c5c9c5', bg = '#181818' },
              },
            },
          },
        },
        overrides = function()
          return {
            ['@variable.builtin'] = { italic = false },
          }
        end,
      }
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    name = 'nordic',
    priority = 1000,
    config = function()
      require('nordic').setup {
        palette = require 'nordic.colors',
        italic_comments = false,
        on_palette = function(palette)
          palette.black1 = '#161616'
        end,
        on_highlight = function(highlights, palette)
          for _, highlight in pairs(highlights) do
            highlight.italic = false
          end
        end,
        swap_backgrounds = true,
      }
    end,
  },
  {
    'sainnhe/sonokai',
    config = function()
      --vim.g.sonokai_style = 'Default'
      vim.g.sonokai_better_performance = 1
      vim.g.sonokai_enable_italic = false
      vim.g.sonokai_disable_italic_comment = true
      vim.g.sonokai_colors_override = {
        bg0 = { '#141414', '232' },
        bg_dim = { '#141414', '232' },
      }
    end,
  },
  {
    'tanvirtin/monokai.nvim',
    name = 'monokai',
    config = function()
      require('monokai').setup {
        italics = false,
        palette = {
          base1 = '#181818',
        },
        custom_hlgroups = {
          CursorLine = { bg = '#2a2a2a' },
        },
      }
    end,
  },
  {
    'blazkowolf/gruber-darker.nvim',
    name = 'gruber-darker',
    config = function()
      require('gruber-darker').setup {
        bold = false,
        invert = {},
        italic = {
          strings = false,
          comments = false,
          folds = false,
        },
        undercurl = true,
        underline = false,
      }
    end,
  },
  {
    'navarasu/onedark.nvim',
    name = 'onedark',
    config = function()
      require('onedark').setup {
        style = 'warmer',
        code_style = {
          comments = 'none',
        },
        colors = {
          bg0 = '#121212',
        },
      }
    end,
  },
  {
    'sho-87/kanagawa-paper.nvim',
    name = 'kanagawa-paper',
    config = function()
      require('kanagawa-paper').setup {
        undercurl = true,
        transparent = false,
        gutter = false,
        dimInactive = true, -- disabled when transparent
        terminalColors = true,
        commentStyle = { italic = false },
        functionStyle = { italic = false },
        keywordStyle = { italic = false, bold = false },
        statementStyle = { italic = false, bold = false },
        typeStyle = { italic = false },
        colors = {
          theme = {
            ui = {
              bg = '#141414',
              bg_cursorline = '#111144',
              bg_p1 = '#141414',
              bg_p2 = '#141414',
              bg_dim = '#141414',
            },
            float = { bg = '#141414' },
            pmenu = { bg = '#141414', bg_sbar = '#141414' },
          },
          palette = {},
        }, -- override default palette and theme colors
      }
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup {
        terminal_colors = true,
        transparent_mode = false,
        undercurl = false,
        uderline = false,
        bold = false,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          folds = false,
        },
        palette_overrides = {
          dark0 = '#121212',
          dark0_hard = '#121212',
          dark1 = '#121212',
        },
      }
    end,
  },
  {
    'catppuccin/nvim',
    priority = 1000,
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        term_colors = true,
        transparent_background = false,
        no_italic = false,
        no_bold = false,
        styles = {
          comments = {},
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
        },
        color_overrides = {
          mocha = {
            base = '#111111',
            mantle = '#1d2021',
            crust = '#1d2021',
          },
        },
        highlight_overrides = {
          mocha = function(C)
            return {
              TabLineSel = { bg = C.pink },
              CmpBorder = { fg = C.surface2 },
              Pmenu = { bg = C.none },
              TelescopeBorder = { link = 'FloatBorder' },
            }
          end,
        },
      }
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    name = 'lualine',
    config = function()
      local lualine_status, lualine = pcall(require, 'lualine')
      local lualine_nightfly = require 'lualine.themes.nightfly'
      local new_colors = {
        blue = '#65d1ff',
        green = '3effdc',
        violet = '#ff61ef',
        yellow = '#ffda7b',
        black = '#161616',
      }
      lualine_nightfly.normal.a.bg = new_colors.black
      lualine_nightfly.normal.a.fg = new_colors.yellow
      lualine_nightfly.normal.b.bg = new_colors.black
      lualine_nightfly.normal.c.bg = new_colors.black
      lualine_nightfly.insert.a.bg = new_colors.black
      lualine_nightfly.insert.a.fg = new_colors.yellow
      lualine_nightfly.insert.b.bg = new_colors.black
      lualine_nightfly.visual.a.bg = new_colors.green
      lualine_nightfly.visual.b.bg = new_colors.black
      lualine_nightfly.command = {
        a = {
          gui = 'bold',
          bg = new_colors.yellow,
          fg = new_colors.black,
        },
      }
      require('lualine').setup {
        options = {
          globalstatus = true,
          theme = lualine_nightfly,
          section_separators = '',
          component_separators = '',
        },
        sections = {
          lualine_c = {
            {
              'filename',
              path = 3,
            },
          },
        },
      }
    end,
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
