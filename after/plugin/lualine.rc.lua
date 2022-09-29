local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
  sections = {
    lualine_b = { 'branch' },
    lualine_c = {{ 
      'filename',
      file_status = true,
      path = 0 -- No parents
    }},
    lualine_x = {
      {
        'diagnostics',
        sources = {
          'nvim_diagnostic'
        },
        symbols = {
          error = 'E',
          warn  = 'W',
          info  = 'I',
          hint  = 'H'
        }
      },
      'encoding',
      'filetype'
    },
  },
  inactive_sections = {
    lualine_c = {{
      'filename',
      file_status = true,
      path = 1 -- Relative path
    }}
  },
  extensions = { 'fugitive' }
}

