local mason_options = {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
}

local mason_lspconfig_options = {
  ensure_installed = { "sumneko_lua" },
  automatic_installation = true,
}

local signature_options = {
  bind = true,
  doc_lines = 5,
  transparency = 80,
  handler_opts = {
    border = "rounded"
  }
}

require("mason").setup(mason_options)
require("mason-lspconfig").setup(mason_lspconfig_options)
require("lsp_signature").setup(signature_options)

require("lspconfig").jsonls.setup {
  settings = {
    json = {
      schemas = require("schemastore").json.schemas {
        select = {
          ".eslintrc",
          "package.json",
        },
      },
      validate = { enable = true },
    },
  },
}
