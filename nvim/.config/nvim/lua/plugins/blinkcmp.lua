return {
  "saghen/blink.cmp",
  version = "1.*", -- 👈 important: do NOT build from cargo
  event = { "InsertEnter", "CmdlineEnter" },
  opts = {
    completion = {
      documentation = { auto_show = true },
      menu = { auto_show = true }
    },
    signature = {
      enabled = true,
    },
    cmdline = {
      enabled = true,
    },
    -- snippets = {
    --   preset = "default",
    -- },
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
      },
    },
    keymap = {
      -- Accept with Enter
      ["<CR>"] = { "accept", "fallback" },

      -- Close menu with Escape
      ["<Esc>"] = { "hide", "fallback" },

      -- Universal Tab
      ["<Tab>"] = {
        "snippet_forward",
        "select_next",
        "fallback",
      },

      -- Universal Shift-Tab
      ["<S-Tab>"] = {
        "snippet_backward",
        "select_prev",
        "fallback",
      },
    }
  },
}
