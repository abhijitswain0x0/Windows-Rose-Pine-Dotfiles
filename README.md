# Windows Rose Pine Dotfiles

A personalized dotfiles setup for Windows featuring the Rose Pine color theme across Neovim, Starship prompt, Fastfetch, and CAVA.

## Structure

```
.
├── nvim/          Neovim configuration (NvChad v2.5)
├── starship/      Starship prompt configuration
├── fastfetch/     Fastfetch system info display
└── cava/          CAVA audio visualizer
```

## Components

### Neovim
- **NvChad v2.5** as the base framework
- **Lazy.nvim** for plugin management
- **Plugins**:
  - `nvim-html-css` - HTML/CSS completion
  - `conform.nvim` - Code formatting
  - `nvim-lspconfig` - Language Server Protocol
  - `nvim-lint` - Linting
  - `smear-cursor.nvim` - Animated cursor blending
  - `blink.cmp` - Completion (NvChad's default)
  - `nvim-treesitter` - Syntax highlighting
- **Treesitter parsers**: vim, lua, vimdoc, python, html, css, javascript, typescript

### Starship Prompt
- Custom Rose Pine-inspired prompt
- **Supported languages**: C, Elixir, Elm, Go, Haskell, Java, Julia, Node.js, Nim, Rust, Scala, Python, Conda
- **Features**: git branch/status, directory truncation with icons, 12-hour time format

### Fastfetch
- Custom ASCII-styled system information display with Rose Pine colors
- **Shows**: user, host, OS, kernel, uptime, desktop environment, terminal, shell, disk, memory, local IP, color palette

### CAVA Audio Visualizer
- Gradient-based color visualization
- **Rose Pine gradient palette**: pine (#31748f), foam (#9ccfd8), iris (#c4a7e7), rose (#ebbcba), gold (#f6c177), love (#eb6f92)
- Noncurses output method
- Stereo channel configuration

## Installation

### Neovim
```powershell
# Create the nvim config directory if it doesn't exist
New-Item -ItemType Directory -Path "$env:LOCALAPPDATA\nvim" -Force

# Copy or symlink the nvim folder
# For example, creating a symlink:
New-Item -ItemType Junction -Path "$env:LOCALAPPDATA\nvim" -Target "path\to\nvim"
```

### Starship
```powershell
# Install starship first
winget install starship

# Copy config
Copy-Item starship\starship.toml "$env:APPDATA\starship\config.toml"
```

### Fastfetch
```powershell
# Install fastfetch first
winget install fastfetch

# Copy config
Copy-Item fastfetch\config.jsonc "$env:APPDATA\fastfetch\config.jsonc"

# Copy logo
Copy-Item fastfetch\logo.png "$env:APPDATA\fastfetch\logo.png"

# Run fastfetch
fastfetch
```

### CAVA
```powershell
# Install CAVA (choco or winget)
choco install cava

# Copy config
Copy-Item cava\config "$env:APPDATA\cava\config"

# Run cava
cava
```

## Rose Pine Color Palette

| Color   | Hex Code  | Usage                      |
|---------|-----------|----------------------------|
| Overlay | `#26233a` | Backgrounds               |
| Pine    | `#31748f` | Primary accent            |
| Foam    | `#9ccfd8` | Secondary accent          |
| Iris    | `#c4a7e7` | Tertiary accent           |
| Rose    | `#ebbcba` | Text/paths                |
| Gold    | `#f6c177` | Warnings/highlights      |
| Love    | `#eb6f92` | Errors/important          |

## License

MIT License - See [LICENSE](LICENSE) file.