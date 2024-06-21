vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbering
opt.relativenumber = true
opt.number = true

vim.o.scrolloff = 10

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if mixed case in search, assume case-sensitive

opt.cursorline = true -- cursor line highlighting

-- colors
opt.termguicolors = true
opt.background = "dark" -- colorschemes will be dark
opt.signcolumn = "yes" -- show sign column

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol or insert mode start pos

-- clipboard
opt.clipboard:append("unnamedplus") -- system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
