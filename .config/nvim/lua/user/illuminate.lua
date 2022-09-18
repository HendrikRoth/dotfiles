local options = {
  providers = {
    "lsp",
    "treesitter",
    "regex",
  },
  delay = 50,
  under_cursor = true,
}

require("illuminate").configure(options)
