vim.opt.backup = false				                    -- do not create backup file
vim.opt.clipboard = "unnamedplus"		              -- access system clipboard
vim.opt.cmdheight = 1				                      -- height of the command line
vim.opt.completeopt = { "menuone", "noselect" }   -- cmp
vim.opt.conceallevel = 0			                    -- make `` visible in markdown files
vim.opt.cursorline = true			                    -- highlight current line
vim.opt.expandtab = true			                    -- convert tabs to spaces
vim.opt.fileencoding = "utf-8"			              -- utf-8 encoding
vim.opt.fillchars.eob = " "
vim.opt.formatoptions:append { "r" }              -- add asterisks in block comments
vim.opt.guifont = "Menlo:17"		                  -- used font
vim.opt.hlsearch = true				                    -- highlight all search matches
vim.opt.ignorecase = true			                    -- ignore case in search patterns
vim.opt.iskeyword:append "-"
vim.opt.laststatus = 3
vim.opt.mouse = "a"				                        -- allow mouse usage
vim.opt.number = true				                      -- numbered lines
vim.opt.numberwidth = 4				                    -- column width for numbers
vim.opt.path:append { "**" }                      -- search down into subfolders
vim.opt.pumheight = 10				                    -- popup menu height
vim.opt.relativenumber = true
vim.opt.ruler = false
vim.opt.scrolloff = 8
vim.opt.shell = "zsh"
vim.opt.shiftwidth = 2				                    -- number of spaces inserted for each indentation
vim.opt.shortmess:append "c"
vim.opt.showcmd = false
vim.opt.showmode = false			                    -- hide the mode in the statusline
vim.opt.showtabline = 0				                    -- always show tabs
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"			                  -- always show the sign column
vim.opt.smartcase = true			                    -- smart case
vim.opt.smartindent = true			                  -- smart indent
vim.opt.splitbelow = true			                    -- new horizontal splits below
vim.opt.splitright = true			                    -- new vertical splits right
vim.opt.swapfile = false			                    -- do not create a swap file
vim.opt.tabstop = 2				                        -- insert 2 spaces for a tab
vim.opt.termguicolors = true			                -- use gui colors in terminal
vim.opt.timeoutlen = 1000			                    -- time to wait for a mapped sequence to complete (in ms)
vim.opt.undofile = true				                    -- persistent undo
vim.opt.updatetime = 300			                    -- faster completion (default 4000ms)
vim.opt.whichwrap:append "<,>,[,],h,l"
vim.opt.wildignore:append { "*/node_modules/*" }  -- ignore node_modules in search
vim.opt.wildoptions = "pum"
vim.opt.wrap = false				                      -- do not wrap lines
vim.opt.writebackup = false			                  -- do not allow editing files opened by other editors
