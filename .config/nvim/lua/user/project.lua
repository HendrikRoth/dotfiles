require("project_nvim").setup {
  manual_mode = false,
  scope_chdir = "global",
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  detection_methods = { "lsp", "pattern" },
  patterns = { ".git", "package.json", "Makefile" },
  exclude_dirs = { "node_modules" },
  silent_chdir = true,
  datapath = vim.fn.stdpath("data"),
  update_focused_file = {
    enable = true,
    update_root = true,
  }
}
