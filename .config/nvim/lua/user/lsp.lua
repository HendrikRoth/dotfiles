local lspFormat = require("lsp-format")
local cmpLsp = require("cmp_nvim_lsp")

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
local lspSignature = require("lsp_signature")
local lspConfig = require("lspconfig")

lspConfig.jsonls.setup {
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

local servers = { 'tsserver', 'svelte', 'gopls' }

local on_attach = function(client, bufnr)
  lspSignature.on_attach(signature_options, bufnr)
  lspFormat.on_attach(client)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmpLsp.update_capabilities(capabilities)

for _, lsp in ipairs(servers) do
  lspConfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 100
    }
  }
end
