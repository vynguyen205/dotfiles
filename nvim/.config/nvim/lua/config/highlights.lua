-- check help for more info
-- nvim_set_hl({ ns_id }, { name }, { val })
-- ns_id: 0 (means global setting)
-- name: "highlight group name" see `:highlight-groups`
-- val: bg, fg, cterm, etc.
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#1e1e2e", bg = "#11111c" })
