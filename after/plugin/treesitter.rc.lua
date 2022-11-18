local status, ts = pcall(require, 'nvim-treesitter.configs')

if (not status) then return end

ts.setup {
  endwise = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    'tsx',
    'lua',
    'elixir',
    'json',
    'dart',
    'javascript',
    'php',
    'java'
  },
  autotag = {
    enable = true,
  }
}
