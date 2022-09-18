require("project_nvim").setup {
  detection_methods = { "lsp", "pattern" },
  patterns = { ".git", "package.json", "Makefile" },
  exclude_dirs = { "node_modules" },
  silent_chdir = true,
  datapath = vim.fn.stdpath("data"),
}
