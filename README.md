# Dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## 📦 Structure

```
.
├── bin/                           # Scripts
└── private_dot_config/
    └── nvim/                      # Neovim configuration (AstroNvim)
```

## 🚀 Quick Start

### 1. Install chezmoi

```bash
sh -c "$(curl -fsLS https://chezmoi.io/get)"
```

### 2. Initialize and Apply

```bash
# Initialize chezmoi with this repo
chezmoi init --apply https://github.com/sunhang/dotfiles.git

# Or if you've already cloned it:
chezmoi init --source ~/.dotfiles --apply
```

### 3. Verify

```bash
chezmoi status
```

## 🛠️ Common Commands

```bash
# Check status
chezmoi status

# Add new dotfile
chezmoi add ~/.config/somefile

# Add and edit
chezmoi edit ~/.config/somefile

# Apply changes
chezmoi apply

# Show diff
chezmoi diff
```

## 📝 Tools

- **chezmoi**: Dotfile manager
- **Neovim**: AstroNvim configuration with Lazy.nvim
- **Plugins**: LSP, Treesitter, Telescope, Mason, and more

## 📝 License

MIT
