local status, tree = pcall(require, 'nvim-tree')

if (not status) then return end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

tree.setup {
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  view = {
    side = "right"
  }
}

vim.keymap.set('n', ';e', ':NvimTreeToggle<CR>', { silent = true })
