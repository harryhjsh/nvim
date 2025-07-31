-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- enable mouse in all modes
vim.o.mouse = "a"

-- status bar
-- vim.o.showmode = false

-- clipboard - sync with system register
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- indent wrapped lines at the level of the original line
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true

-- case-insensitive searching when lowercase
vim.o.ignorecase = true
vim.o.smartcase = true

-- split window logically
vim.o.splitright = true
vim.o.splitbelow = true

-- render whitespace
vim.o.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}

-- cursor
vim.o.cursorline = true
vim.o.scrolloff = 12

-- confirm save instead of failing
vim.o.confirm = true
