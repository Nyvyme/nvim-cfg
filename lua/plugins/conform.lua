return {
  'stevearc/conform.nvim',
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "nvim-lua/plenary.nvim" },
    { "williamboman/mason.nvim" },
  },
  lazy = false,
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        c = {
          command = 'clang-format',
          args = { '--style=file', '$FILENAME' },
          stdin = true,
        },
        cpp = {
          command = 'clang-format',
          args = { '--style=file', '$FILENAME' },
          stdin = true,
        },
        h = {
          command = 'clang-format',
          args = { '--style=file', '$FILENAME' },
          stdin = true,
        },
        hpp = {
          command = 'clang-format',
          args = { '--style=file', '$FILENAME' },
          stdin = true,
        },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = false,
      },
    })
  end
}
