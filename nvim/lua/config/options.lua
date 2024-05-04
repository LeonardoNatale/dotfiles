-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be
--  used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set relative line numbers
vim.wo.relativenumber = true

-- NOTE: See `:help vim.opt` for more.

local opt = vim.opt
-- Make line numbers default.
opt.number = true

-- Enable mouse mode, can be useful for resizing splits for example.
opt.mouse = 'a'

-- Don't show the mode, since it's already in status line.
opt.showmode = false

-- Sync clipboard between OS and Neovim.
-- See `:help clipboard`
opt.clipboard = 'unnamedplus'

-- Disable line wrap when content overflows the buffer width.
--  See `:help breakindent`
--  See `:help wrap`
opt.breakindent = false
opt.wrap = false

-- Save undo history.
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search.
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default.
opt.signcolumn = 'yes'

-- Decrease update time.
opt.updatetime = 250
opt.timeoutlen = 300

-- Configure how new splits should be opened.
opt.splitright = true
opt.splitbelow = true

-- Disable special whitespace (e.g. tabs) display.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = false

-- Preview substitutions live, as you type.
opt.inccommand = 'split'

-- Show which line your cursor is on.
opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Set highlight on search
opt.hlsearch = true
