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
  }),
  mapping = cmp.mapping.preset.insert {
    ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
    ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
  }
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
