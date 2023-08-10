local cmp = require('cmp')
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }
})

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })

