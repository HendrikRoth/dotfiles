local nullLs = require("null-ls")

local null_options = {
  sources =  {
    nullLs.builtins.formatting.stylua,
    nullLs.builtins.diagnostics.eslint,
    nullLs.builtins.completion.spell,
  },
}

nullLs.setup(null_options)
