-- See `:h nvim_create_autocmd`
local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
  desc = "Hightlight Text When Yanking",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

autocmd("LspAttach", {
  desc = "Format on Save",
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client:supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end,
      })
    end
  end,
})

autocmd("FileType", {
  desc = "Enable Treesitter Automatically",
  pattern = { "c", "cpp", "lua", "bash" },
  callback = function()
    -- syntax highlighting, provided by Neovim
    vim.treesitter.start()
  end,
})

-- LEETCODE NVIM AUTOCMD
autocmd("BufEnter", {
  desc = "Allow Specific Leetcode Keymaps",
  pattern = vim.fn.stdpath("data") .. "/leetcode/*",
  callback = function()
    if vim.b.leetcode_entered == nil then
      vim.b.leetcode_entered = true
      vim.keymap.set("n", "<leader>r", "<cmd>Leet run<CR>", { desc = "Leet Run", buffer = true })
      vim.keymap.set("n", "<leader>s", "<cmd>Leet submit<CR>", { desc = "Leet Submit", buffer = true })
      vim.keymap.set("n", "<leader>l", "<cmd>Leet list<CR>", { desc = "Leet List", buffer = true })
    end
  end
})
