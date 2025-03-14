return {
  {
	'Mofiqul/adwaita.nvim',
	
  },
  {
	  'WTFox/jellybeans.nvim',
	  lazy = false,
	  priority = 1000,
	  opts = {
		  style = "dark",
		  italics = false
	  },
  },
  {
	  'behemothbucket/gruber-darker-theme.nvim',
	--  name = 'behemoth-gruber',
	  lazy = false,
	  priority = 1000,
  },
  {
	'loctvl842/monokai-pro.nvim',
	name = 'monokai-pro',
	lazy = false,
	priority = 1000,
	config = function()
		require('monokai-pro').setup {
			transparent_background = false,
			terminal_colors = true,
			devicons = true, -- highlight the icons of `nvim-web-devicons`
			styles = {
				comment = { italic = false },
	    		keyword = { italic = false }, -- any other keyword
	    		type = { italic = false }, -- (preferred) int, long, char, etc
	    		storageclass = { italic = false }, -- static, register, volatile, etc
	    		structure = { italic = false }, -- struct, union, enum, etc
	    		parameter = { italic = false }, -- parameter pass in function
	    		annotation = { italic = false },
	    		tag_attribute = { italic = false }, -- attribute of tag in reactjs
			},
	
			 filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
			 -- Enable this will disable filter option
			 day_night = {
			   enable = false, -- turn off by default
			   day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
			   night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
			 },
			 inc_search = "background", -- underline | background
			 background_clear = {
			   -- "float_win",
			   "toggleterm",
			   -- "telescope",
			   "which-key",
			   "renamer",
			   "notify",
			   "nvim-tree",
			   -- "neo-tree",
			   "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
			 },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
			 plugins = {
			   bufferline = {
			     underline_selected = false,
			     underline_visible = false,
			   },
			   indent_blankline = {
			     context_highlight = "default", -- default | pro
			     context_start_underline = false,
			   },
			 },
		}
	end
  },
  {
    'deparr/tairiki.nvim',
    name = 'tairiki',
    lazy = false,
    config = function()
      require('tairiki').setup {
        code_style = { comments = 'none' },
        colors = {
          dark = {
            black = '#191919',
            bg0 = '#191919',
            comment = '#2f6b31',
          },
          highlights = {
            ['@Comment'] = { fg = '#2f6b31' },
            ['@Normal'] = { bg = '#191919' },
            ['@NormalNC'] = { bg = '#191919' },
            ['@SignColumn'] = { bg = '#191919' },
            ['@EndOfBuffer'] = { bg = '#191919' },
            ['@CursorLine'] = { bg = '#111144' },
            ['@Cursor'] = { bg = '#00ff33', fg = '#303030' },
          },
        },
      }
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
    'NTBBloodbath/doom-one.nvim',
    name = 'doom-one',
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
                bg = '#181818',
                bg_gutter = '#181818',
                bg_p2 = '#111144', -- this controls current line colour
                float = { bg = '#1b1b1b' },
                pmenu = {
                  bg = '#1b1b1b',
                },
                pmenuSbar = { bg = '#1b1b1b' },
              },
            },
            wave = {
              ui = {
                bg_gutter = '#181818',
                bg = '#181818',
                bg_p2 = '#111144',
                fg_reverse = '#DCD7BA',
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
          bg0 = '#141414',
        },
      }
    end,
  },
  {
    'cpea2506/one_monokai.nvim',
    name = 'one_monokai',
    lazy = false,
    priority = 1000,
    config = function()
      require('one_monokai').setup {
        italics = false,
        colors = { bg = '#1b1b1b' },
        groups = {
          defaults = {
            Cursor = { bg = '#00ff33', fg = '#303030' },
          },
        },
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
          dark0 = '#181818',
          dark0_hard = '#181818',
          dark1 = '#181818',
        },
        overrides = {
          CursorLine = { bg = '#252525' },
          Pmenu = { bg = '#252525' },
          PmenuThumb = { bg = '#252525' },
          PmenuSel = { bg = '#252525' },
          PmenuSbar = { bg = '#252525' },
        },
      }
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    name = 'lualine',
    config = function()
      local auto = require 'lualine.themes.auto'
      auto.normal.c.bg = '#181818'
      auto.normal.c.fg = '#bdb395'
      --auto.insert.c.bg = '#181818'
      --auto.visual.c.bg = '#181818'
      --auto.command.c.bg = '#181818'
      -- auto.terminal.c.bg = '#181818'
      --      powerline_dark.

      require('lualine').setup {
        options = {
          globalstatus = true,
          theme = auto,
          --section_separators = '',
          --component_separators = '',
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
  {
    'travisvroman/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = false,
      keywords = {
        TODO = { color = '#802015' },
        HACK = { color = '#ff6600' },
        NOTE = { color = '#008000' },
        FIXME = { color = '#f06292' },
        LEFTOFF = { color = '#ffff99' },
        nocheckin = { color = '#ff00ff' },
      },
      highlight = {
        pattern = [[(KEYWORDS|keywords)\s*(\([^\)]*\))?:]],
        keyword = 'wide_bg',
        after = '',
      },
    },
  },
}
