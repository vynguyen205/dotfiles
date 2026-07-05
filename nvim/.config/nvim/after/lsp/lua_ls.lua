-- unsure what pathStrict means
-- read lsp but don't understand
-- wtf is a workspace?
-- "pathStrict enable will search first level of directories" lua_ls what does that even mean?

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = { pathStrict = false }
    }
  }
})
