#!/bin/bash

echo "🛠 Setting up your Mac dev environment..."

# Install Homebrew
if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install core CLI tools
brew install git node nvm yarn pnpm zsh gh pgcli python@3.13 sqlite

# Install GUI apps
brew install --cask \
  webstorm \
  visual-studio-code \
  cursor \
  warp \
  rectangle \
  figma \
  postman \
  pixelsnap \
  fork \
  tableplus \
  responsively \
  microsoft-word \
  microsoft-excel \
  microsoft-outlook \
  microsoft-teams \
  whatsapp \
  telegram \
  spotify \
  shottr \
  slack \
  docker \
  pycharm-ce \
  ollama

# Set PNPM global binary path in .zshrc if not already present
grep -qxF 'export PNPM_HOME="$HOME/Library/pnpm"' ~/.zshrc || echo 'export PNPM_HOME="$HOME/Library/pnpm"' >> ~/.zshrc
grep -qxF 'export PATH="$PNPM_HOME:$PATH"' ~/.zshrc || echo 'export PATH="$PNPM_HOME:$PATH"' >> ~/.zshrc

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Install global JS tooling
pnpm add -g \
  @angular/cli \
  create-t3-app \
  vite \
  graphql \
  jest \
  playwright \
  msw \
  plop \
  nodemon \
  ts-node \
  pm2 \
  prisma \
  tailwindcss \
  sass \
  gulp-cli \
  grunt-cli \
  webpack-cli

# Safely add NVM setup and aliases to .zshrc
grep -qxF 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc || echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
grep -qxF '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"' ~/.zshrc || echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
grep -qxF 'alias ws="webstorm ."' ~/.zshrc || echo 'alias ws="webstorm ."' >> ~/.zshrc
grep -qxF 'alias dev="pnpm dev || yarn dev || npm run dev"' ~/.zshrc || echo 'alias dev="pnpm dev || yarn dev || npm run dev"' >> ~/.zshrc

# Apply .zshrc changes
source ~/.zshrc

# UI Preferences
echo "🌙 Enabling dark mode..."
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'

echo "🎨 Setting accent color to Multicolor..."
defaults delete -g AppleAccentColor 2>/dev/null

echo "📦 Hiding dock and enabling minimize-to-icon..."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock minimize-to-application -bool true
killall Dock

echo "👆 Enabling tap to click..."
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

echo "⚡ Setting max tracking speed..."
defaults write -g com.apple.trackpad.scaling -float 3

echo "🖱️ Scrollbar preferences..."
defaults write -g AppleShowScrollBars -string "WhenScrolling"
defaults write -g AppleScrollerPagingBehavior -int 1

# Finder preferences
echo "🧭 Setting Finder preferences..."
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
killall Finder

echo "✅ All done! Restart or log out/log in for some settings to fully apply 🚀"
