## 🍏 Mac Dev Setup Script – Full-Stack Edition

A comprehensive setup script to bootstrap a powerful Mac development environment tailored for frontend and full-stack engineers.

Optimized for **Apple Silicon** (M1–M4) and ideal for working with **React**, **Next.js**, **Vue**, **Angular**, **Node.js**, **GraphQL**, **Docker**, and **Prisma** — plus all the productivity and design tools you love.

---

## 🛠 What’s Included

### ⚙️ Core Dev Tools
- Homebrew (macOS package manager)
- Git, Node.js (via NVM), Yarn, pnpm, Zsh
- VS Code & WebStorm (your IDEs of choice)
- Warp (modern terminal)

### 🧰 Frontend & Full-stack CLI Tooling
- [`create-t3-app`](https://create.t3.gg/) – modern full-stack TypeScript setup
- [`Vite`](https://vitejs.dev/) – lightning-fast frontend tooling
- [`@angular/cli`](https://angular.io/cli) – Angular scaffolding and dev server
- [`Plop.js`](https://plopjs.com/) – file generator CLI
- [`Jest`](https://jestjs.io/) – unit testing for JS/TS
- [`Playwright`](https://playwright.dev/) – end-to-end browser testing
- [`MSW`](https://mswjs.io/) – API mocking for frontend apps
- [`ts-node`, `nodemon`, `pm2`] – Node.js server tooling

### 🧬 GraphQL
- `graphql` CLI
- Apollo + GraphQL WebStorm plugin support

### 🐳 Docker
- Docker Desktop for containerized dev environments

---

## 💻 GUI Applications

### 🧑‍💻 Development & Design
- **WebStorm** – Full-featured IDE for JavaScript/TypeScript
- **Visual Studio Code** – Lightweight, extensible code editor
- **Figma** – Collaborative UI/UX design platform
- **Postman** – API request testing and debugging
- **PixelSnap** – Measure distances and UI spacing on screen
- **Fork** – Git GUI client with a clean interface
- **TablePlus** – Modern GUI for working with databases
- **Responsively** – Preview websites across multiple devices
- **HandMirror** – Quick camera check from the menu bar

### 🧰 Utilities & Workflow Enhancers
- **Warp** – Modern, GPU-accelerated terminal
- **Rectangle** – Window snapping and layout manager
- **Shottr** – Fast and powerful screenshot tool
- **LastPass** – Secure password manager

### 📬 Productivity & Communication
- **Slack** – Team messaging and collaboration
- **Microsoft Teams** – Corporate chat and meetings
- **Telegram** – Secure personal and work messaging
- **WhatsApp** – Messaging for personal or team use
- **Spotify** – Music streaming to stay in flow
- **Microsoft Word** – Document editing
- **Microsoft Excel** – Spreadsheets and data
- **Microsoft Outlook** – Email and calendar

---

## 🔧 System Preferences Tweaks

The script also configures:

- 🌙 Dark mode
- 🎨 Multicolor accent
- 👆 Tap-to-click on trackpad
- ⚡ Max trackpad speed
- 📦 Dock auto-hide + minimize-to-icon
- 🖱 Scrollbar behavior set to "jump to clicked spot"

---

## ⚡ Aliases

```bash
alias ws="webstorm ."
alias dev="pnpm dev || yarn dev || npm run dev"
```

# 🚀 Getting Started

1. Clone this repo
```bash
git clone https://github.com/GayaneKasparova/mac-fe-dev-setup.git
cd mac-fe-dev-setup
```
2. Make the script executable
```bash
chmod +x setup-mac.sh
```

3. Run the script
```bash
./setup-mac.sh
```
⚠️ Compatible with Apple Silicon Macs (M1–M4) on macOS 13 or later

### ❤️ Contribute or Customize
This setup reflects my personal workflow and preferred tools.
Fork it, extend it, or make it your own.
