local lspConfig = require("lspconfig")
local lspFormat = require("lsp-format")

local on_attach = function(client)
  lspFormat.on_attach(client)
end

lspConfig.gopls.setup { on_attach = on_attach }
lspConfig.svelte.setup { on_attach = on_attach }
