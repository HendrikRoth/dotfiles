local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then impatient.enable_profile() end

for _, source in ipairs {
  "user.options",
  "user.plugins",
  "user.mappings",

  "user.autopairs",
  "user.cmp",
  "user.colorizer",
  "user.comment",
  "user.dashboard",
  "user.escape",
  "user.fzf",
  "user.git",
  "user.highlighting",
  "user.illuminate",
  "user.lab",
  "user.linting",
  "user.lsp",
  "user.project",
  "user.session",
  "user.snippets",
  "user.statusline",
  "user.terminal",
  "user.translate",
  "user.wildmenu",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end
