return {
  "kawre/leetcode.nvim",
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "ibhagwan/fzf-lua",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Leet",
  opts = {
    -- configuration goes here
    lang = "c",
    picker = {
      provider = "fzf-lua"
    },
    plugins = {
      non_standalone = true
    },
  },
}
