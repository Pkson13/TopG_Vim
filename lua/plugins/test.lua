return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  -- { "folke/tokyonight.nvim", enabled = false }, --exeptionally easy to disable a plugin
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      -- on_colors = function(colors)
      -- colors.hint = colors.orange
      -- colors.error = "#ffffff"
      -- end,
      -- the on_colors funtion above is used to change the theme. just relized that this isn't hard :)
    },
  },
}
