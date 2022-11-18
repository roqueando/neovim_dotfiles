local status, autopairs = pcall(require, 'nvim-autoparis')

if (not status) then return end


autopairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}
