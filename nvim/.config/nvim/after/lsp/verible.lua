vim.lsp.config("verible", {
  cmd = { "verible-verilog-ls", "--rules_config_search" },
  filetypes = { "verilog" },
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { async = false }
      end
    })
  end,
})

-- Mappings.
-- See `:help vim.lsp.*` for documentation on any of the below functions
