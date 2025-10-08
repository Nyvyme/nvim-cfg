return {
  'catppuccin/nvim',
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      theme = "catppuccin-macchiato"
    })
  end
}
