return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 500,
    spec = {
      {
        { "<leader>f", group = "file/find" },
        { "<leader>o", group = "obsidian" },
        { "<leader>b", group = "buffers" },
        { "<leader>d", group = "delete" },
        { "<leader>c", group = "code" },
        { "z",         group = "fold" },
        { "g",         group = "goto" },
        { "<leader>w", group = "windows",  proxy = "<c-w>" },
      }
    },
    win = {
      border = "rounded",
      height = { max = 15 },
    }
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
