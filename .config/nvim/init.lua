local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then impatient.enable_profile() end

for _, source in ipairs {
  "user.options",
  "user.plugins",
  "user.mappings",

  "user.dashboard",
  "user.lsp",
  "user.highlighting",
  "user.project",
  "user.fzf",
  "user.wildmenu",
  "user.statusline",
  "user.colorizer",
  "user.linting",
  "user.terminal",
  "user.escape",
  "user.cmp",
  "user.autopairs",
  "user.illuminate",
  "user.snippets",
  "user.comment",
  "user.git",
  "user.session",
  "user.lab",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end
