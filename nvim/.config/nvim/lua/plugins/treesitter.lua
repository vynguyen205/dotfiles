return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensured_installed = { "bash", "c", "cpp", "lua" },
    }
  }
}
