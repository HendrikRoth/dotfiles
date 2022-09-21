local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
---@diagnostic disable-next-line: missing-parameter
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  -- snapshot = "july-24",
  snapshot_path = fn.stdpath "config" .. "/snapshots",
  max_jobs = 50,
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
    prompt_border = "rounded", -- Border style of prompt popups.
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Plugin Mangager
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Dependency for many plugins
  use { "nvim-lua/plenary.nvim", commit = "62dc2a7acd2fb2581871a36c1743b29e26c60390" }

  -- Improve startup time
  use { "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" }

  -- Notifications
  use { "rcarriga/nvim-notify", event = "VimEnter", commit = "7076ce8e8f042e193668b7ac67f776858df5206b" }

  -- Colorscheme
  use { "bluz71/vim-moonfly-colors", commit = "448df20e1d24cb4d6a32f71de3b1c9d8ea84cbfd" }

  -- LSP
  use { "neovim/nvim-lspconfig", commit = "51775b12cfbf1b6462c7b13cd020cc09e6767aea" }
  use { "williamboman/mason.nvim", commit = "d7eb2eeec566da6cfd1c61b1d7aa6fc592d1b296" }
  use { "williamboman/mason-lspconfig.nvim", requires = { "nvim-lspconfig", "mason.nvim" }, commit = "b70dedab5ceb5f3f84c6bc9ceea013292a14f8dc" }
  use { "ray-x/lsp_signature.nvim", requires = { "nvim-lspconfig", "mason.nvim" }, commit = "e65a63858771db3f086c8d904ff5f80705fd962b" }

  -- Syntax highlighting
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", commit = "539bed2f4418f193618994b198c70f36212501f0" }
  use { "p00f/nvim-ts-rainbow", after = "nvim-treesitter", commit = "fad8badcd9baa4deb2cf2a5376ab412a1ba41797" }

  -- Formatting and linting
  use { "jose-elias-alvarez/null-ls.nvim", commit = "fb2c4701f29dd60f003c6e5d3db1ff606d65907f" }
  use { "lukas-reineke/lsp-format.nvim", commit = "b611bd6cea82ccc127cf8fd781a1cb784b0d6d3c" }

  -- FZY
  use { "nvim-telescope/telescope.nvim", commit = "30e2dc5232d0dd63709ef8b44a5d6184005e8602" }
  use { "romgrk/fzy-lua-native", commit = "aa00feb01128c4d279c8471898e15898e75d5df5" }

  -- Project management
  use { "ahmedkhalf/project.nvim", before = "telescope.nvim", commit = "090bb11ee7eb76ebb9d0be1c6060eac4f69a240f" }

  -- Completion
  use { "hrsh7th/nvim-cmp", commit = "913eb8599816b0b71fe959693080917d8063b26a" }
  use { "hrsh7th/cmp-buffer", after = "nvim-cmp", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }
  use { "hrsh7th/cmp-path", after = "nvim-cmp", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }
  use { "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" }
  use { "hrsh7th/cmp-cmdline", after = "nvim-cmp", commit = "c66c379915d68fb52ad5ad1195cdd4265a95ef1e" }
  use { "hrsh7th/cmp-emoji", after = "nvim-cmp", commit = "19075c36d5820253d32e2478b6aaf3734aeaafa0" }
  use { "hrsh7th/cmp-calc", after = "nvim-cmp", commit = "f7efc20768603bd9f9ae0ed073b1c129f63eb312" }
  use { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }
  use { "petertriho/cmp-git", requires = "nvim-lua/plenary.nvim", commit = "fae6cdb407ad6c63a0b1928670bad1a67a55b887" }
  use { "David-Kunz/cmp-npm", commit = "4b6166c3feeaf8dae162e33ee319dc5880e44a29" }

  -- Visual indention lines
  use { "lukas-reineke/indent-blankline.nvim", commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" }

  -- GIT
  use { "lewis6991/gitsigns.nvim", commit = "231fa923fbc2797eef92b24860ab882cebf645b2" }
  use { "TimUntersberger/neogit", commit = "64245bb7f577bad0308d77dc1116ce7d8428f27f" }

  -- Dashboard
  use { "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" }

  -- Color highlighting
  use { "norcalli/nvim-colorizer.lua", commit = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6" }

  -- Icons
  use { "kyazdani42/nvim-web-devicons", event = "VimEnter", commit = "2d02a56189e2bde11edd4712fea16f08a6656944" }
  use { "onsails/lspkind.nvim", commit = "f46e3b5528e73347dc0678277460e5cea2a52b6a" }

  -- Statusline
  use { "nvim-lualine/lualine.nvim", requires = "kyazdani42/nvim-web-devicons", commit = "a52f078026b27694d2290e34efa61a6e4a690621" }

  -- Autopairs
  use { "windwp/nvim-autopairs", commit = "14cc2a4fc6243152ba085cc2059834113496c60a" }

  -- Extend % to language specific words
  use { "andymass/vim-matchup", event = "VimEnter", commit = "ab8575d05f760da64321fefa88ed5d6cc8bb9369" }

  -- Highlight same words
  use { "RRethy/vim-illuminate", commit = "b5452627d6ef9c04a27ac4edde0b00aa3a50f60f" }

  -- Close tags
  use { "windwp/nvim-ts-autotag", commit = "fdefe46c6807441460f11f11a167a2baf8e4534b" }

  -- Terminal
  use { "akinsho/toggleterm.nvim", commit = "e1e159c1b2075cfe9803dfdc521d028e48f6c1a4" }

  -- Sessions
  use { "Shatur/neovim-session-manager", event = "BufWritePost", commit = "3e8410cdad6e65c49c70d519477912035a4e91b8" }

  -- Commenting
  use { "numToStr/Comment.nvim", commit = "30d23aa2e1ba204a74d5dfb99777e9acbe9dd2d6" }

  -- JSON schemas
  use { "b0o/SchemaStore.nvim", commit = "a5fbd83d2b9b778518203e25167c05580add6b31" }

  -- Remove escaping delay
  use { "max397574/better-escape.nvim", commit = "d5ee0cef56a7e41a86048c14f25e964876ac20c1" }

  -- Snippets
  use { "L3MON4D3/LuaSnip", commit = "d049b3dbefee5d0a6d0bfbd913dfaa89ded0457f" }
  use { "rafamadriz/friendly-snippets", commits = "22a99756492a340c161ab122b0ded90ab115a1b3" }

  -- Extended wildmenu
  use { "gelguy/wilder.nvim", requires = "fzy-lua-native", commit = "679f348dc90d80ff9ba0e7c470c40a4d038dcecf" }

  -- Alignment
  use { "Vonr/align.nvim", commit = "368343964ac6d30f913bb46c272fea1c4d477bc5" }

  -- Surround selections
  use { "kylechui/nvim-surround", commit = "d91787d5a716623be7cec3be23c06c0856dc21b8", config = function() require("nvim-surround").setup() end }

  -- Tab through open buffers
  use { "ghillb/cybu.nvim", commit = "43b68850ac370c583e95ff136f65b144859470dc" }

  -- Code runner
  use { "0x100101/lab.nvim", commit = "d46fc09b871dd5d855fda29eed6afea663b307ab" }

  -- Translations
  use { "potamides/pantran.nvim", commit = "2feb438aab4a994e8671502f03b8199b659728b8" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
