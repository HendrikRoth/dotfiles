local cmp = require("cmp")
local cmpLsp = require("cmp_nvim_lsp")

require("cmp_git").setup()
require("cmp-npm").setup({})

local options = {
  snipped = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
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
    ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item()),
    ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item()),
    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item()),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4)),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4)),
    ["<C-e>"] = cmp.mapping(cmp.mapping.abort()),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete()),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
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
