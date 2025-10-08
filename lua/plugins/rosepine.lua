return {
  "rose-pine/neovim",
  priority = 1000,
  config = function()
    require('rose-pine').setup({
      variant = "main",
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
      },

      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },

      palette = {
        main = {
          base = '#000000',
        },
      },
    })
  end
}
