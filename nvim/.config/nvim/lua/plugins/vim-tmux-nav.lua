return {
  "christoomey/vim-tmux-navigator",
  event = "VeryLazy",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>",     { desc = "Tmux Left", group = "Tmux" } },
    { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>",     { desc = "Tmux Down", group = "Tmux" } },
    { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>",       { desc = "Tmux Up", group = "Tmux" } },
    { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>",    { desc = "Tmux Right", group = "Tmux" } },
    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", { desc = "Tmux Previous", group = "Tmux" } },
  },
}
