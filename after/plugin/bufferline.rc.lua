local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode                    = 'tabs',
    separator_style         = 'slant',
    always_show_bufferline  = false,
    show_buffer_close_icons = false,
    color_icons             = true,
  },
}

set('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {
  silent = true
})
set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {
  silent = true
})

