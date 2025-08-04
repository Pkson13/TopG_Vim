# 💤 TopGVim

My Neovim config using Lazy.vim and LazyVim

> Had compilation errors with Tree-sitter and had to install MinGW.

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).

---

## ⚠️ Tree-sitter Fix Notes if on windows

When trying to install new Tree-sitter parsers, I ran into compilation errors.

Although I had previously installed MinGW through MSYS2 (and even used Dev-C++ before), Neovim couldn't compile the parsers properly due to incorrect or conflicting compiler environment variables.

### ✅ Fix that worked

I installed MinGW using Chocolatey:

```sh
choco install mingw
After doing that, Tree-sitter was able to compile successfully.

I also had to disable/remove other gcc compilers from the PATH — especially the ones from MSYS2 and Dev-C++ — so Neovim could pick up the correct one.

## 🧠 Reminder to Future Me
Whenever Tree-sitter fails to compile a parser again:

Make sure you're using the MinGW from Chocolatey.

Remove or disable other conflicting paths from:

MSYS2

Dev-C++

Restart the terminal.





```
