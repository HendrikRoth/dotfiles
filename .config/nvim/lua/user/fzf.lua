local telescope = require("telescope")

telescope.setup {
  defaults = {
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      },
    },
  },
}

telescope.load_extension("projects")
