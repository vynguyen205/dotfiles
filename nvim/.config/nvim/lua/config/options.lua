-- See `:help lua-guide-options` for more details
-- `vim.opt` is equivalent to :set in vimscript

vim.g.mapleader = " "
vim.g.maplocalleader = "\\" -- leader that is local to buffer
vim.opt.termguicolors = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.textwidth = 100
vim.opt.linebreak = true
vim.opt.wrap = false
vim.opt.virtualedit = "block"

vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.swapfile = false

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.winborder = "rounded"

vim.opt.showtabline = 0

vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
