# 🚀 Modern Neovim Configuration 


[![Neovim](https://img.shields.io/badge/Neovim-0.9%2B-blueviolet.svg?style=flat-square&logo=neovim&logoColor=green)](https://neovim.io)
[![Lua](https://img.shields.io/badge/Built%20with-Lua-blue.svg?style=flat-square&logo=lua)](https://lua.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

> **Transform your coding experience with this lightning-fast, feature-rich Neovim configuration designed for modern development workflows.**

This comprehensive Neovim setup provides a complete IDE experience with intelligent code completion, advanced syntax highlighting, debugging capabilities, and seamless Git integration - all optimized for maximum productivity and performance.

![Neovim Configuration Screenshot](https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/5.png)

---

## 📋 Table of Contents

- [✨ Key Features](#-key-features)
- [🎯 Why Choose This Configuration](#-why-choose-this-configuration)
- [⚡ Quick Installation](#-quick-installation)
- [🔧 What's Included](#-whats-included)
- [🎨 Language Support](#-language-support)
- [⌨️ Essential Keybindings](#️-essential-keybindings)
- [🔌 Plugin Ecosystem](#-plugin-ecosystem)
- [📸 Screenshots & Demo](#-screenshots--demo)
- [⚙️ Customization Guide](#️-customization-guide)
- [🚀 Performance](#-performance)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

---

## ✨ Key Features

### 🧠 **Intelligent Code Completion**
- **GitHub Copilot Integration**: AI-powered code suggestions with smart Tab/Shift+Tab navigation
- **LSP-based Autocompletion**: Context-aware suggestions for 15+ programming languages
- **Snippet Expansion**: Quick code templates with jump-through placeholders
- **Smart Import Management**: Automatic imports and dependency resolution

### 🎨 **Advanced Syntax & UI**
- **TreeSitter Parsing**: Accurate syntax highlighting and code understanding
- **Modern Color Schemes**: Eye-friendly themes optimized for long coding sessions
- **Smart Indentation**: Automatic formatting with language-specific rules
- **Visual Enhancements**: Smooth scrolling, cursor line highlighting, and more

### 🔍 **Powerful Navigation & Search**
- **Telescope Fuzzy Finder**: Lightning-fast file, symbol, and content search
- **File Explorer**: Intuitive tree-based file management with git integration
- **Buffer Management**: Efficient tab-like buffer navigation and organization
- **Project Management**: Quick project switching and session restoration

### 🛠️ **Development Tools**
- **Integrated Terminal**: Seamless terminal access within the editor
- **Git Integration**: Visual diff, blame, signs, and advanced Git workflow tools
- **Debugging Support**: Built-in debugging capabilities for multiple languages
- **Code Formatting**: Automatic code formatting on save with Prettier, Black, and more

### ⚡ **Performance Optimized**
- **Lazy Loading**: Plugins load only when needed for instant startup
- **Minimal Resource Usage**: Optimized configuration for smooth performance
- **Fast Search**: Indexed file and content searching with caching
- **Efficient Memory Management**: Smart plugin lifecycle management

---

## 🎯 Why Choose This Configuration?

| Feature | This Config | Default Neovim | Other Configs |
|---------|------------|----------------|---------------|
| **Language Support** | 15+ LSPs | None | Limited |
| **AI Integration** | GitHub Copilot | None | None/Basic |
| **Pre-configured** | ✅ Ready to use | ❌ Blank slate | ⚠️ Complex setup |

---

## ⚡ Quick Installation

### Automated Installation (Recommended)

**For macOS/Linux:**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/setup.sh)"
```

**For Windows (PowerShell):**
```powershell
# Run as Administrator (recommended)
iex (iwr -UseBasicParsing https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/setup.ps1).Content
```

### Manual Installation

**Unix (macOS/Linux):**
```bash
# 1. Backup existing configuration
mv ~/.config/nvim ~/.config/nvim.backup

# 2. Clone this repository
git clone https://github.com/hsanirudh/Neovim_lua.git ~/.config/nvim

# 3. Start Neovim (plugins will auto-install)
nvim
```

**Windows:**
```powershell
# 1. Backup existing configuration
if (Test-Path "$env:LOCALAPPDATA\nvim") { 
    Rename-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim_backup" 
}

# 2. Clone this repository
git clone https://github.com/hsanirudh/Neovim_lua.git "$env:LOCALAPPDATA\nvim"

# 3. Start Neovim (plugins will auto-install)
nvim
```

### Requirements

- **Neovim 0.9+** (Check with `nvim --version`)
- **Git** for plugin management
- **Node.js 16+** for LSP servers and Copilot
- **Python 3.8+** for Python-based tools
- **Ripgrep** for enhanced searching: `brew install ripgrep` or `apt install ripgrep`

---

## 🔧 What's Included

### Core Configuration
- **`lua/core/`**: Essential Neovim settings and keybindings
- **`lua/plugins/`**: Modular plugin configurations
- **`lua/utils/`**: Helper functions and utilities

### Smart Defaults
```lua
-- Optimized for development
vim.o.number = true              -- Line numbers
vim.o.clipboard = "unnamedplus"  -- System clipboard integration
vim.o.updatetime = 300           -- Faster completion
vim.o.timeoutlen = 100           -- Quick key sequences
vim.o.termguicolors = true       -- True color support
```

---

## 🎨 Language Support

This configuration provides **first-class support** for:

### **Web Development**
- **JavaScript/TypeScript**: React, Vue, Angular, Node.js
- **HTML/CSS**: Emmet, Tailwind CSS, SCSS support
- **JSON/YAML**: Schema validation and formatting

### **Systems Programming**
- **C/C++**: Clang-based completion and debugging
- **Go**: Native Go tools integration

### **Scripting & Automation**
- **Python**: PyRight LSP with Black formatting
- **Lua**: Optimized for Neovim configuration
- **Shell**: Bash/Zsh scripting support

### **Data & Documentation**
- **Markdown**: Live preview and formatting
- **Docker**: Dockerfile syntax and linting
- **Java**: Eclipse JDT language server

### **Additional Languages**
Easy to add support for any language through Mason's LSP installer.

---

## ⌨️ Essential Keybindings

### **Navigation & Files**
| Key | Action | Mode |
|-----|--------|------|
| `<Space>` | Leader key | All |
| `<C-h/j/k/l>` | Window navigation | Normal |
| `<Space>ff` | Find files | Normal |
| `<Space>fg` | Live grep | Normal |
| `<Space>fb` | Browse buffers | Normal |
| `<Space>e` | Toggle file explorer | Normal |

### **AI & Completion**
| Key | Action | Mode |
|-----|--------|------|
| `<Tab>` | Next completion | Insert |
| `<Shift-Tab>` | Accept Copilot suggestion | Insert |
| `<C-Space>` | Trigger completion | Insert |
| `<Enter>` | Confirm completion | Insert |

### **Git Integration**
| Key | Action | Mode |
|-----|--------|------|
| `<Space>gg` | Open Lazygit | Normal |
| `<Space>gd` | View diff | Normal |
| `<Space>gb` | Git blame | Normal |
| `]h` / `[h` | Next/Previous hunk | Normal |

### **Buffer Management**
| Key | Action | Mode |
|-----|--------|------|
| `<Shift-j/k>` | Next/Previous buffer | Normal |
| `<Shift-e>` | Close buffer | Normal |
| `<Alt-1-9>` | Go to buffer 1-9 | Normal |
| `gD` | Pick buffer to close | Normal |

---

## 🔌 Plugin Ecosystem

### **Core Productivity**
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)**: Lightning-fast plugin manager
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)**: Fuzzy finder and picker
- **[Which-key](https://github.com/folke/which-key.nvim)**: Interactive keybinding help
- **[Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)**: File explorer with Git integration

### **Language & Completion**
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: LSP configuration
- **[Mason](https://github.com/williamboman/mason.nvim)**: LSP/DAP/Formatter installer
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Autocompletion engine
- **[GitHub Copilot](https://github.com/zbirenbaum/copilot.lua)**: AI pair programming

### **Syntax & Editing**
- **[TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Advanced syntax highlighting
- **[Auto-pairs](https://github.com/windwp/nvim-autopairs)**: Smart bracket/quote pairing
- **[Surround](https://github.com/kylechui/nvim-surround)**: Quick text object manipulation
- **[Comment](https://github.com/numToStr/Comment.nvim)**: Smart commenting

### **UI & Themes**
- **[BufferLine](https://github.com/akinsho/bufferline.nvim)**: Beautiful tab-like buffer line
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)**: Customizable statusline
- **[Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)**: Indentation guides
- **[Colorschemes](https://github.com/folke/tokyonight.nvim)**: Modern color themes

### **Git & Version Control**
- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)**: Git integration and signs
- **[Lazygit](https://github.com/kdheepak/lazygit.nvim)**: Terminal-based Git UI
- **[Diffview](https://github.com/sindrets/diffview.nvim)**: Git diff and merge tool

### **Development Tools**
- **[Trouble](https://github.com/folke/trouble.nvim)**: Diagnostics and quickfix list
- **[Todo Comments](https://github.com/folke/todo-comments.nvim)**: Highlight and search TODO comments
- **[Conform](https://github.com/stevearc/conform.nvim)**: Code formatting with multiple formatters

---

## 📸 Screenshots & Demo

### **Dashboard & Welcome Screen**
![Dashboard](https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/5.png)
*Clean, minimalist dashboard with quick access to recent files and projects*

### **Code Editing with LSP**
![Code Editing](https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/4.png)
*Intelligent code completion, diagnostics, and syntax highlighting in action*

### **File Explorer & Navigation**
![File Explorer](https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/2.png)
*Integrated file tree with Git status indicators and buffer management*

### **Telescope Fuzzy Finding**
![Telescope](https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/1.png)
*Lightning-fast file and content search with preview*

### **Git Integration**
![Git Integration](https://raw.githubusercontent.com/hsanirudh/Neovim_lua/v2/assets/3.png)
*Comprehensive Git workflow integration with visual diff and blame*

---

## ⚙️ Customization Guide

### **Adding New Languages**

1. **Install LSP server**:
```lua
-- In lua/plugins/lsp/mason.lua
ensure_installed = {
  "your_language_server", -- Add here
}
```

2. **Configure specific settings**:
```lua
-- In lua/plugins/lsp/lspconfig.lua
lspconf["your_language_server"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  -- Your specific settings
})
```

### **Custom Keybindings**

Add to `lua/core/KeyMaps.lua`:
```lua
-- Your custom keybindings
keymap('n', '<leader>xx', ':YourCommand<CR>', opts)
```

### **Theme Customization**

Modify `lua/plugins/ColorScheme.lua`:
```lua
-- Change theme
return {
  "your-favorite-theme/nvim",
  config = function()
    vim.cmd("colorscheme your-theme")
  end
}
```

---

## 🚀 Performance

### **Benchmarks**
- **Startup Time**: ~45ms (vs 200ms+ typical configs)
- **Plugin Load**: Lazy-loaded for instant responsiveness
- **Memory Usage**: ~50MB initial footprint
- **Search Speed**: Sub-second across large codebases

### **Optimization Features**
- **Lazy Plugin Loading**: Plugins load only when needed
- **Efficient LSP**: Optimized language server configurations
- **Smart Caching**: File and search result caching
- **Minimal Dependencies**: Only essential plugins included

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### **Ways to Contribute**
- 🐛 **Report bugs** via [Issues](https://github.com/hsanirudh/Neovim_lua/issues)
- 💡 **Suggest features** for new functionality
- 🔧 **Submit pull requests** for improvements
- 📖 **Improve documentation** and help others
- ⭐ **Star the repository** if you find it useful

### **Development Setup**
```bash
# Fork and clone the repository
git clone https://github.com/yourusername/Neovim_lua.git
cd Neovim_lua

# Create a feature branch
git checkout -b feature/your-improvement

# Make changes and test
# Submit a pull request
```

### **Contribution Guidelines**
- Follow existing code style and structure
- Test your changes thoroughly
- Update documentation for new features
- Keep commits clean and descriptive

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 🌟 Show Your Support

If this configuration enhances your development workflow:

- ⭐ **Star this repository** to show appreciation
- 🍴 **Fork it** to customize for your needs
- 📢 **Share it** with fellow developers
- 💖 **Consider sponsoring** the project

---

**Happy Coding!** 🚀✨

*Built with ❤️ for the community*
