# Windows Rose Pine Dotfiles

A personalized dotfiles setup for Windows featuring the Rose Pine color theme across Neovim, Wezterm, Fastfetch, and CAVA.

## Structure

```
.
├── nvim/          Neovim configuration (NvChad v2.5)
├── wezterm/       Wezterm terminal emulator config
├── fastfetch/    Fastfetch system info display
└── cava/         CAVA audio visualizer
```

## Components

### Neovim
- **NvChad v2.5** as the base framework
- **Lazy.nvim** for plugin management
- **Smear Cursor** for cursor blending
- **LSP Config** - Language Server Protocol configuration
- **Conform** - Code formatting
- **Stylua** - Lua formatter

### Wezterm
- **Rosé Pine (Gogh)** color scheme
- **Acrylic** background with 30% opacity
- **JetBrainsMono Nerd Font**
- Leader key: `Ctrl+Space`
- Custom keybindings for window management

### Fastfetch
- Custom ASCII-styled system information display
- Shows: user, host, OS, kernel, uptime, desktop environment, terminal, shell, disk, memory, network

### CAVA Audio Visualizer
- Gradient-based color visualization
- Rose Pine-inspired gradient palette

## Installation

### Neovim
```powershell
# Create the nvim config directory if it doesn't exist
New-Item -ItemType Directory -Path "$env:LOCALAPPDATA\nvim" -Force

# Copy or symlink the nvim folder
# For example, creating a symlink:
New-Item -ItemType Junction -Path "$env:LOCALAPPDATA\nvim" -Target "path\to\nvim"
```

### Wezterm
Copy the `wezterm` file to your Wezterm config directory:
```powershell
# Default location
Copy-Item wezterm "$env:USERPROFILE\AppData\Local\wezterm\wezterm.lua"
```

### Fastfetch
```powershell
# Install fastfetch first
winget install fastfetch

# Copy config
Copy-Item fastfetch\config.jsonc "$env:APPDATA\fastfetch\config.jsonc"

# Copy logo
Copy-Item fastfetch\logo.png "$env:APPDATA\fastfetch\logo.png"
```

### CAVA
```powershell
# Install CAVA (choco or winget)
choco install cava

# Copy config
Copy-Item cava\config "$env:APPDATA\cava\config"
```

## Keybindings

### Wezterm Leader (`Ctrl+Space`)
| Key | Action |
|-----|--------|
| `o` | New tab |
| `w` | Close tab |
| `h` | Split horizontal |
| `v` | Split vertical |
| `f` | Toggle fullscreen |
| `c` | Center window |
| `m` | Hide window |

## License

MIT License - See [LICENSE](LICENSE) file.