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
brew install git node nvm yarn pnpm zsh gh pgcli

# Install GUI apps
brew install --cask \
  webstorm \
  visual-studio-code \
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
  telegram\
  spotify \
  shottr \
  slack \
  docker

# Global JS tooling
pnpm add -g \
  @angular/cli \
  graphql \
  jest \
  playwright \
  plop \
  nodemon \
  ts-node \
  pm2 \
  prisma

# Update .zshrc with aliases and NVM config
echo '
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

# Aliases
alias ws="webstorm ."
alias dev="pnpm dev || yarn dev || npm run dev"
' >> ~/.zshrc
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

echo "✅ All done! Restart or log out/log in for some settings to fully apply 🚀"
