return {
  'hrsh7th/nvim-cmp',
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-o>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true })
      }),
      sources = cmp.config.sources(
        {
          { name = 'nvim_lsp' }
        },
        {
          { name = 'buffer' }
        }
      )
    })
  end
}
