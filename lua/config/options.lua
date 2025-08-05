-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--vim.opt.number = false
vim.opt.ruler = true
-- vim.o.background = "light"
vim.api.nvim_create_user_command("SonCmd", function()
  print("Hello from Lua!")
end, {})
