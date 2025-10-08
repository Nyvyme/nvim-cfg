return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function() vim.g.barbar_auto_setup = true end,
  opts = {
    animations = false
  },
  version = '^1.0.0',
  config = function()
    vim.keymap.set('n', '<A-q>', ':BufferPrevious<CR>', {})
    vim.keymap.set('n', '<A-e>', ':BufferNext<CR>', {})
    vim.keymap.set('n', '<A-x>', ':BufferClose<CR>', {})
  end
}
