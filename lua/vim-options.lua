local colorcolumn = "81"

for i = 82, 300, 1 do
  colorcolumn = colorcolumn .. "," .. tostring(i)
end

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smarttab")
vim.cmd("set autoindent")
vim.cmd("set cc=" .. colorcolumn)
vim.cmd("set mouse=a")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set ttyfast")
vim.cmd("set guicursor=i:block")
vim.cmd("set cursorline")
vim.g.mapleader = " "

vim.cmd("set backspace=indent,eol,start")
vim.keymap.set("i", "<C-BS>", "<C-W>", {})
vim.keymap.set("i", "<C-h>", "<C-w>", {})
vim.keymap.set("v", "<C-c>", "\"+y", {})

vim.opt.list = true
vim.opt.listchars:append("space:.")

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require('conform').format({ bufnr = args.buf })
  end,
})
