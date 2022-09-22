local o = vim.opt
o.backup = false				                    -- do not create backup file
o.clipboard = "unnamedplus"		              -- access system clipboard
o.cmdheight = 1				                      -- height of the command line
o.completeopt = { "menuone", "noselect" }   -- cmp
o.conceallevel = 0			                    -- make `` visible in markdown files
o.cursorline = true			                    -- highlight current line
o.expandtab = true			                    -- convert tabs to spaces
o.fileencoding = "utf-8"			              -- utf-8 encoding
o.fillchars.eob = " "
o.formatoptions:append { "r" }              -- add asterisks in block comments
o.guifont = "Menlo:17"		                  -- used font
o.hlsearch = true				                    -- highlight all search matches
o.ignorecase = true			                    -- ignore case in search patterns
o.iskeyword:append "-"
o.laststatus = 3
o.mouse = "a"				                        -- allow mouse usage
o.number = true				                      -- numbered lines
o.numberwidth = 4				                    -- column width for numbers
o.path:append { "**" }                      -- search down into subfolders
o.pumheight = 10				                    -- popup menu height
o.relativenumber = true
o.ruler = false
o.scrolloff = 8
o.shell = "zsh"
o.shiftwidth = 2				                    -- number of spaces inserted for each indentation
o.shortmess:append "c"
o.showcmd = false
o.showmode = false			                    -- hide the mode in the statusline
o.showtabline = 0				                    -- always show tabs
o.sidescrolloff = 8
o.signcolumn = "yes"			                  -- always show the sign column
o.smartcase = true			                    -- smart case
o.smartindent = true			                  -- smart indent
o.splitbelow = true			                    -- new horizontal splits below
o.splitright = true			                    -- new vertical splits right
o.swapfile = false			                    -- do not create a swap file
o.tabstop = 2				                        -- insert 2 spaces for a tab
o.termguicolors = true			                -- use gui colors in terminal
o.timeoutlen = 1000			                    -- time to wait for a mapped sequence to complete (in ms)
o.undofile = true				                    -- persistent undo
o.updatetime = 300			                    -- faster completion (default 4000ms)
o.whichwrap:append "<,>,[,],h,l"
o.wildignore:append { "*/node_modules/*" }  -- ignore node_modules in search
o.wildoptions = "pum"
o.wrap = false				                      -- do not wrap lines
o.writebackup = false			                  -- do not allow editing files opened by other editors
vim.cmd "colorscheme moonfly"
