local status, tree = pcall(require, 'nvim-tree')
if (not status) then return end

tree.setup {
}

local option = { silent = true }

set('n', '<C-t><C-t>', ':NvimTreeToggle<CR>', option)
set('n', '<C-t>f', ':NvimTreeFocus<CR>', option)
set('n', '<C-t>c', ':NvimTreeCollapse<CR>', option)
