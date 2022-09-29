local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
    },
    mappings = {
      ['i'] = {
        ['<C-w>'] = function() cmd('normal vbd') end,
      },
      ['n'] = {
        ['N'] = fb_actions.create,
        ['h'] = fb_actions.goto_parent_dir,
        ['/'] = function() cmd('startinsert') end
      }
    }
  }
}

telescope.load_extension('file_browser')

local options = {
  noremap = true,
  silent = true
}

set('n', ';f',   ':Telescope file_browser<CR>', options)
set('n', ';r',   ':Telescope live_grep<CR>', options)
set('n', '\\\\', ':Telescope buffers<CR>', options)
