local Path = require("plenary.path")

local options = {
  sessions_dir = Path.new(vim.fn.stdpath("data"), "sessions"),
  autoload_mode = require("session_manager.config").AutoloadMode.LastSession,
  autosave_last_session = true,
  autosave_ignore_filetypes = {
    "gitcommit",
  },
  max_path_length = 80,
}

require("session_manager").setup(options)
