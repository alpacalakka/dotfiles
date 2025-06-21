# Dotfiles

Reproducible Neovim‑centric dotfiles for Linux (tested on Ubuntu 24.04).
Clone, run a single script, and your full editing environment is ready anywhere.

---

## ✨ Features

| Area            | Tools / Plugins                                                   |
| --------------- | ----------------------------------------------------------------- |
| **Editor**      | [Neovim 0.11 +](https://neovim.io) configured in Lua              |
| **Theme**       | `catppuccin` colour‑scheme                                        |
| **Syntax**      | `nvim-treesitter` with auto‑installed parsers                     |
| **Navigation**  | `telescope.nvim` with smart FZF‑style search                      |
| **Git**         | `gitsigns.nvim`                                                   |
| **LSP**         | `mason.nvim` + `mason-lspconfig.nvim` + `nvim-lspconfig`          |
| **Completion**  | `nvim-cmp` with LSP source and `LuaSnip` snippets                 |
| **Plugin mgr.** | [`lazy.nvim`](https://github.com/folke/lazy.nvim) (fast start‑up) |

---

## 🚀 Quick start

```bash
# 1 – clone
git clone --depth=1 https://github.com/alpacalakka/dotfiles.git ~/dotfiles
cd ~/dotfiles

# 2 – link Neovim config
./install.sh        # symlinks ~/.config/nvim → dotfiles/.config/nvim

# 3 – launch the editor
nvim                # plugins bootstrap on first run
```

### Requirements

* **Neovim 0.11 +**

  ```bash
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt update && sudo apt install neovim
  ```
* CLI helpers `git`, `curl`, `ripgrep`, `fd-find`, `build-essential`.

---

## 🗂️ Layout

```text
dotfiles/
├── .config/
│   └── nvim/
│       ├── init.lua
│       └── lua/alpacalakka/
│           ├── options.lua
│           ├── keymaps.lua
│           ├── plugins.lua
│           └── lsp.lua
├── install.sh
├── .gitignore
└── README.md
```

---

## ⌨️  Key bindings

| Binding                 | Action                 |
| ----------------------- | ---------------------- |
| `<Space>w`              | save file              |
| `<Space>q`              | quit all buffers       |
| `<Space>l` / `<Space>h` | next / previous buffer |
| `<Space>ff`             | Telescope find files   |
| `<Space>fg`             | Telescope live grep    |
| `<Space>fb`             | Telescope buffers      |
| `<Space>fh`             | Telescope help tags    |

---

## 🔄 Updating

| Task                      | Command                   |
| ------------------------- | ------------------------- |
| Update plugins            | `:Lazy sync`              |
| Update Treesitter parsers | `:TSUpdate`               |
| Install / update LSPs     | `:Mason` → press `u`      |
| Upgrade Neovim (apt)      | `sudo apt upgrade neovim` |
| Pull latest dotfiles      | `git -C ~/dotfiles pull`  |

---

## 🛠  Script reference

`install.sh` does:

1. Verify you’re inside this Git repo.
2. Backup any existing `~/.config/nvim` dir to `nvim-backup-<timestamp>`.
3. Symlink the repo’s Neovim config into place.
4. Optionally run a headless `:Lazy sync`.

---

## 🤝 Contributing / forking

Fork freely and adapt.  PRs are welcome if they improve portability,
performance, or readability without adding unnecessary bloat.
