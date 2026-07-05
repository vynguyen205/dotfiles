return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        custom_highlights = function(colors)
          return {
            Normal = { bg = colors.crust },    --background
            NormalNC = { bg = colors.mantle }, --bg when not focused
            FloatBorder = { fg = colors.surface0, bg = colors.crust },
            NormalFloat = { bg = colors.crust },
            WinSeparator = { fg = colors.green },
            IncSearch = { fg = colors.lavender, bg = colors.surface1 },
            BlinkCmpMenuBorder = { fg = colors.surface1, bg = colors.crust },
            FzfLuaBackDrop = { bg = colors.crust },
            MiniFilesBorder = { fg = colors.surface0 },
            -- TabLine = {},
          }
        end,

      })
      vim.cmd.colorscheme("catppuccin")
    end


  },
}
