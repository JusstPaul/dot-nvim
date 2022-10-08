-- Shorter options
local g = vim.g
opt = vim.opt
wo  = vim.wo
cmd = vim.cmd
api = vim.api

-- Specify commands
cmd('autocmd!')

-- Encoding
vim.scriptencoding = 'utf-8'
opt.encoding       = 'utf-8'
opt.fileencoding   = 'utf-8'

-- General options
g.loaded = 1
g.loaded_netrwPlugin = 1

wo.number      = true

opt.title       = true
opt.autoindent  = true
opt.hlsearch    = true
opt.backup      = false
opt.showcmd     = true
opt.cmdheight   = 1
opt.laststatus  = 2
opt.expandtab   = true
opt.scrolloff   = 10
opt.backupskip  = '/tmp/*'
opt.inccommand   = 'split'
opt.ignorecase  = true
opt.smarttab    = true
opt.breakindent = true
opt.shiftwidth  = 2
opt.tabstop     = 2
opt.ai          = true -- Auto-indent
opt.si          = true -- Smart indent
opt.wrap        = false
opt.backspace   = 'start,eol,indent'
opt.path:append { '**' } -- Finding files
opt.wildignore:append { '*/node_modules/*' } 

-- Disable automatic commenting when pressing Return key
api.nvim_create_autocmd('FileType', {
  pattern = '*',
  command = 'set formatoptions-=c  formatoptions-=r'
})

-- Only paste at Insert mode
api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste',
})

-- UX
opt.cursorline    = true
opt.termguicolors = true
opt.winblend      = 0
opt.wildoptions   = 'pum'
opt.pumblend      = 5
opt.background    = 'dark'
