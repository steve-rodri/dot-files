# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Setup and Installation

This is a macOS dotfiles repository managed by Dotbot and Homebrew. The primary installation commands are:

```bash
# Install/setup dotfiles
./install  # Uses Dotbot configuration in install.conf.yaml
./setup    # Installs Homebrew dependencies and configures macOS apps

# Re-run dotfiles installation after changes
./install

# Update Homebrew packages  
brew bundle install
```

## Key Architecture

### Configuration Management
- **Dotbot**: Primary installation tool configured via `install.conf.yaml`
- **Homebrew**: Package management via `Brewfile` 
- **ASDF**: Version management for languages/tools (config in `asdf/tool-versions`)

### Shell Environment (Zsh)
- **Main config**: `zsh/zshrc` (loads all config modules)
- **Aliases**: `zsh/config/aliases.sh` (extensive command shortcuts)
- **Profile**: `zsh/zprofile` (contains API keys and PATH setup)
- **Plugin manager**: Zplug for zsh plugins including spaceship prompt

### Terminal Multiplexer (Tmux)
- **Main config**: `tmux/tmux.conf`
- **Plugin management**: TPM (Tmux Plugin Manager)
- **Key binding**: Prefix changed from Ctrl-B to Ctrl-A
- **AI helper script**: `tmux/scripts/tmux_ai.sh` (launches Claude, Gemini, Codex CLIs)

### Editor (Neovim)
- **Architecture**: Kickstart.nvim based configuration with custom plugins
- **Plugin manager**: Lazy.nvim
- **Structure**: Modular Lua configuration in `nvim/lua/`
  - `custom/` - Personal customizations and plugins
  - `kickstart/` - Base kickstart configuration
- **Key features**: LSP, completion, debugging, telescope, tree-sitter

### Window Management (macOS)
- **Yabai**: Tiling window manager  
- **skhd**: Hotkey daemon for window management shortcuts
- **Hammerspoon**: Automation and custom behaviors
- **Karabiner**: Keyboard customization

## Common Development Commands

### Neovim Management
```bash
# Edit dotfiles
d                    # Open ~/.dot-files/ in nvim
vc                   # Edit nvim config
vic                  # Navigate to nvim config and edit

# Quick edits
za                   # Edit zsh aliases
zc                   # Edit zsh config directory
hc                   # Edit Hyper config
```

### Package Management
```bash
# Bun (primary package manager)
b <script>          # Run bun script
bi                  # Install dependencies
ba <package>        # Add package
bgi <package>       # Global install

# Yarn (secondary)
y <command>         # Yarn shorthand
yp                  # Edit global yarn packages

# NPM utilities
uap                 # Update all packages (npm-check-updates)
```

### Git Workflow
```bash
# Git shortcuts (extensive aliases available)
gs                  # git status
ga                  # git add
gc                  # git commit
gd                  # git diff
lg                  # lazygit

# Gitmoji integration available via gitmoji-cli
```

### Tmux Session Management
```bash
# Tmux shortcuts
t                   # tmux
ta                  # tmux attach
tns <name>          # new session with name
ts                  # fzf session selector
ai                  # Launch AI CLI session (Claude, Gemini, Codex)
```

### Development Tools
```bash
# File operations
f                   # fzf file finder with bat preview
ls/lsa/lsg/lst      # colorls variants with git status/tree view

# Database
sail                # Laravel Sail (if applicable)
```

## Important Configuration Details

### API Keys & Environment
- API keys are stored in `zsh/zprofile` (OpenAI, Anthropic)
- PATH configurations include Bun, Homebrew, Python frameworks
- Zoxide integration for smart directory jumping

### Plugin Ecosystem
**Tmux plugins**: tmux-sensible, tmux-yank, tmux-thumbs, tmux-fzf, tmux-sessionx, vim-tmux-navigator, tmux-resurrect, tmux-continuum, tokyo-night theme

**Zsh plugins**: zsh-z (directory jumping), spaceship-prompt, zsh-syntax-highlighting, zsh-completions

**Neovim**: Extensive plugin configuration with LSP, completion, debugging, telescope, tree-sitter, and custom UI enhancements

### Tmux AI Integration
The `ai` alias launches a tmux session with three panes running Claude, Gemini, and Codex CLIs simultaneously with synchronized input.

## Directory Structure Notes
- Configuration files are symlinked from repo to expected locations via Dotbot
- Global packages managed through `yarn/global/package.json`
- Version management handled by ASDF with tool-versions file
- Window management configurations in dedicated directories (yabai, skhd, hammerspoon, karabiner)