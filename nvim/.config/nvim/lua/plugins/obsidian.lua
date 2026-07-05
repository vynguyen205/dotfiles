return {
  "obsidian-nvim/obsidian.nvim",
  event = { "VeryLazy" },
  version = "*", -- use latest release, remove to use latest commit
  ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in the next major release
    workspaces = {
      {
        name = "second-brain",
        path = "~/second-brain",
      },
    },
    picker = {
      --name = "telescope.nvim"
    },
    attachments = {
      folder = "5-Main_Notes/assets", -- relative to vault root
    },
    new_notes_location = "root",
    note_id_func = function(title)
      if not title then
        return nil
      end
      -- If it's a tag-style note. you do [[#tag]]
      -- otherwise [[tag]] is just regular notes and not a #tag
      if title:sub(1, 1) == "#" then
        return "3-Tags/" .. title:sub(2)
      end
      -- Otherwise normal note
      return "5-Main_Notes/" .. title
    end, -- Core mappings
    keymap = {
      -- Smart action (follow links, toggle checkboxes, etc.)
      ["<CR>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { expr = true, buffer = true },
      },

    },
  },
}
