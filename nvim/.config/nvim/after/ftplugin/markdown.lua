-- Visual wrap only (no hard line breaks)
vim.opt_local.wrap = true
vim.opt_local.linebreak = true

-- Disable automatic hard wrapping
vim.opt_local.textwidth = 0
vim.opt_local.formatoptions:remove("t")
vim.opt_local.formatoptions:remove("c")
vim.opt_local.conceallevel = 2

-- Spell Check
vim.opt_local.spell = true
vim.opt_local.spelllang = { "en_us" }

-- Indentation
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true

-- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.wo.foldmethod = "expr"
