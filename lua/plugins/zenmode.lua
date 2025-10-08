return {
  "folke/zen-mode.nvim",

  config = function()
    require('zen-mode').setup {
      window = {
        width = 81,
        height = 1,
      },
    }
    vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>", {})
  end
}
