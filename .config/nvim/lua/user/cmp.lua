local cmp = require("cmp")
local cmpLsp = require("cmp_nvim_lsp")

require("cmp_git").setup()
require("cmp-npm").setup({})

local options = {
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
    { name = "calc" },
    { name = "cmdline" },
    { name = "emoji" },
    { name = "npm", keyword_length = 4 },
    { name = "path" },
  })
}

cmp.setup(options)

cmp.setup.filetype("gitcommit", {
  sources = cmp.config.sources({
    { name = "git" }
  }, {
    { name = "buffer" }
  })
})

cmp.setup.cmdline(":", {
  sources = {
    { name = "cmdline" }
  }
})

cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" }
  }
})
