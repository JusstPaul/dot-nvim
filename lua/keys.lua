-- Shorthands
local keymap = vim.keymap
set = keymap.set

local silent = { silent = true }

-- Remove highlights
set('n', '<Esc><Esc>', ':nohl<CR>', silent)

-- Do not yank with 'x'
set('n', 'x', '"_x')

-- Increment and decrement
set('n', '+', '<C-a>')
set('n', '-', '<C-x>')

-- Tabs
set('n', 'te', ':tabedit<CR>', silent)
set('n', 'tc', ':tabclose<CR>', silent)
set('n', 'tn', ':tabnext<CR>', silent)
set('n', 'tp', ':tabprevious<CR>', silent)
---- Splits
set('n', 'ss', ':split<Return><C-w>w', silent)
set('n', 'sv', ':vsplit<Return><C-w>w', silent)
-- Buffers
set('n', 'bn', ':bnext<CR>', silent)
set('n', 'bp', ':bprevious<CR>', silent)

-- Avoid Esc
set('i', '<M-i>', '<ESC>', {
  silent = true,
  noremap = true
})
