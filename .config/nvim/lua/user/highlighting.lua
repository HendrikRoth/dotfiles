require("nvim-treesitter.configs").setup {
  ensure_installed = { "typescript", "html", "svelte", "css", "go", "lua" },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 2000,
  },
  matchup = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}
