return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- "angular", --will always get a compilation error untill i use the gcc version from choco mingw
      },
    },
  },
}
-- require("nvim-treesitter").install({ "rust", "javascript", "zig", "angular" }):wait(300000)
