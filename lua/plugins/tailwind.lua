return {
  -- {
  --   "roobert/tailwindcss-colorizer-cmp.nvim",
  --   -- optionally, override the default options:
  --   -- config = function()
  --
  --   opts = {},
  --   --   require("tailwindcss-colorizer-cmp").setup({
  --   --     color_square_width = 2,
  --   --   })
  --   -- end,
  -- },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",

    opts = { -- set to setup table
      -- user_commands = false,
      user_default_options = {
        names = true,
        names_opts = { --red RED
          lowercase = false,
          camelcase = true,
          uppercase = true,
          strip_digits = false,
        },
        tailwind = true,
      },
    },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   -- optional = true,
  --   dependencies = {
  --     { "roobert/tailwindcss-colorizer-cmp.nvim", opts = {} },
  --   },
  --   opts = function(_, opts)
  --     -- original LazyVim kind icon formatter
  --     local format_kinds = opts.formatting.format
  --     opts.formatting.format = function(entry, item)
  --       format_kinds(entry, item) -- add icons
  --       return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  --     end
  --   end,
  -- },
}
