local status, bufferline = pcall(require, 'bufferline')

if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    always_show_bufferline = false,
    show_close_icon = false,
    color_icons = false
  },
  highlights = {
    separator = {
      fg = "#252526",
      bg = "#1e1e1e"
    },
    separator_selected = {
      fg = "#252526",
    },
    background = {
      fg = "#252526",
      bg = "#1e1e1e"
    },
    buffer_selected = {
      fg = "#fdf6e3",
    },
    fill = {
      bg = '#1e1e1e'
    }
  }
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
