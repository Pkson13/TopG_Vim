# 💤 TopG Vim My Neovim config using Lazy.vim and LazyVim

## 📦 Complete Installation Steps for Windows

### 1. Install Chocolatey (if not already installed)

Open PowerShell as Administrator and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### 2. Install Required Tools via Chocolatey

```powershell
# Install Neovim
choco install neovim

# Install Git (required for LazyVim)
choco install git

# Install Node.js (required for many LSP servers and plugins)
choco install nodejs

# Install MinGW (for Tree-sitter compilation)
choco install mingw

# Install a Nerd Font (optional but recommended)
choco install cascadia-code-nerd-font
```

### 3. Restart Terminal

Close and reopen your terminal to ensure all PATH changes take effect.

### 4. Verify Installations

```powershell
# Check Neovim
nvim --version

# Check Git
git --version

# Check Node.js
node --version

# Check GCC (from MinGW)
gcc --version
```

### 5. Backup Existing Neovim Config (if any)

```powershell
# Backup existing config
mv $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# Backup existing data
mv $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

### 6. Install TopG Vim

```powershell
git clone https://github.com/Pkson13/TopG_Vim.git $env:LOCALAPPDATA\nvim
```

### 7. Start Neovim

```powershell
nvim
```

LazyVim will automatically install all plugins on first launch.

---

> Had compilation errors with Tree-sitter and had to install MinGW.

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).

---

## ⚠️ Tree-sitter Fix Notes if on Windows

When trying to install new Tree-sitter parsers, I ran into compilation errors. Although I had previously installed MinGW through MSYS2 (and even used Dev-C++ before), Neovim couldn't compile the parsers properly due to incorrect or conflicting compiler environment variables.

### ✅ Fix that worked

I installed MinGW using Chocolatey:

```powershell
choco install mingw
```

After doing that, Tree-sitter was able to compile successfully.

I also had to disable/remove other gcc compilers from the PATH — especially the ones from MSYS2 and Dev-C++ — so Neovim could pick up the correct one.

### 🔧 Clean PATH Environment

If you have conflicts with other compilers:

1. Open System Properties → Advanced → Environment Variables
2. Edit the PATH variable
3. Remove or move to the bottom any paths containing:

   - MSYS2 (`C:\msys64\mingw64\bin`)
   - Dev-C++ (`C:\Dev-Cpp\MinGW64\bin`)
   - Other GCC installations

4. Ensure MinGW from Chocolatey is prioritized (usually `C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin`)

## 🧠 Reminder

Whenever Tree-sitter fails to compile a parser again:

1. Make sure you're using the MinGW from Chocolatey
2. Remove or disable other conflicting paths from:
   - MSYS2
   - Dev-C++
3. Restart the terminal
4. Test with: `:TSInstall lua` or any other parser

## 🚀 Post-Installation Tips

### Essential LazyVim Commands

- `<leader>` = Space key by default
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>e` - Toggle file explorer
- `<leader>l` - Open Lazy plugin manager
- `:Mason` - Manage LSP servers, linters, formatters

### Customize Your Config

Edit files in `$env:LOCALAPPDATA\nvim\lua\config\`:

- `options.lua` - General options
- `keymaps.lua` - Custom keybindings
- `autocmds.lua` - Auto commands

Add plugins in `$env:LOCALAPPDATA\nvim\lua\plugins\`

### Useful Tree-sitter Commands

```vim
:TSInstall <language>    " Install parser for a language
:TSUpdate               " Update all parsers
:TSInstallInfo          " Show installation info
```

---

## 📂 Directory Structure

After installation, your Neovim config will be located at:

```
%LOCALAPPDATA%\nvim\
├── lua/
│   ├── config/
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins/
│       └── example.lua
├── init.lua
└── README.md
```
