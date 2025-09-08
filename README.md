## 🍏 Mac Dev Setup Script – Full-Stack Edition

A polished script to set up your Mac (Apple Silicon) for full-stack development — with everything from React and Vue to Angular, GraphQL, Docker, and productivity essentials.

---

## 🛠 What It Sets Up

### ⚙️ CLI Tools
- Homebrew
- Git, Node.js (via NVM), Yarn, pnpm, Zsh
- GitHub CLI (`gh`)
- PostgreSQL CLI (`pgcli`)
- Python 3.13
- SQLite
- Redis
- OpenJDK 11

### 🧰 Frontend & Full-stack Tooling
- `create-t3-app`, `vite`, `@angular/cli`, `plop`
- `@ngrx/cli`, `@angular-devkit/schematics-cli`
- `@oracle/suitecloud-cli`
- `jest`, `playwright`, `msw`
- `nodemon`, `ts-node`, `pm2`
- `prisma` (ORM)
- `graphql` (JS library)
- `tailwindcss`, `sass`
- `gulp-cli`, `grunt-cli`, `webpack-cli`
- `eslint`, `prettier`, `husky`
- `lint-staged`, `commitizen`
- `semantic-release`, `compodoc`
- `lighthouse-ci`, `@storybook/cli`

### 💻 GUI Applications

#### 🧑‍💻 Development & Design
- WebStorm
- Visual Studio Code
- Cursor (AI-powered editor)
- PyCharm CE
- Figma
- Postman
- Insomnia
- PixelSnap
- Fork
- TablePlus
- MongoDB Compass
- Sequel Pro
- Responsively
- Proxyman
- JSON Viewer

#### 🧰 Utilities
- Warp (terminal)
- Rectangle (window manager)
- Shottr (screenshots)

#### 📬 Productivity & Communication
- Slack
- Microsoft Teams
- Telegram
- WhatsApp
- Spotify
- Microsoft Word, Excel, Outlook, OneDrive

#### 🐳 DevOps & AI
- Docker Desktop
- Ollama (local LLM runner)
---

## 🔧 System Tweaks

### 🖥 macOS Preferences (via script)
- Dark mode
- Multicolor accent color
- Tap-to-click (trackpad)
- Max tracking speed
- Auto-hide dock & minimize to icon
- Scrollbars: show on scroll + jump to clicked spot
- Faster key repeat and delay
- Disable press-and-hold for keys

### 🧭 Finder Preferences
- Show hidden files
- Show all file extensions
- Show status bar
- Show path bar
- Show full POSIX path in title bar

---

## ⚡ Aliases

```bash
alias ws="webstorm ."
alias dev="pnpm dev || yarn dev || npm run dev"
```
---

# 🚀 Getting Started
1. Clone this repo
```bash
git clone https://github.com/username/setup-mac.git
cd mac-dev-setup
```

2. Make the script executable
```bash
chmod +x setup-mac.sh
```

3. Run the script
```bash
./setup-mac.sh
```

💡 Script is safe to run multiple times — it checks for duplicate .zshrc entries and won’t overwrite existing settings.

---

❤️ Customize & Contribute
Fork it and adapt it to your workflow — or suggest improvements via pull request!

## 📂 Development Directories

The script creates the following directory structure:


