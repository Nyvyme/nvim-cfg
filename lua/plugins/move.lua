return {
  "fedepujol/move.nvim",
  config = function ()
    require('move').setup {
      line = {
        enable = true,
        indent = true
      },
    }
    vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', { noremap = true, silent = true })
    vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', { noremap = true, silent = true })
  end
}
