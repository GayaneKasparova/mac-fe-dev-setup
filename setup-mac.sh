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
echo "⚙️ Installing core CLI tools..."
brew install git node nvm yarn pnpm zsh gh pgcli python@3.13 sqlite postgresql redis openjdk@11

# Start database services
brew services start postgresql
brew services start redis

# Install GUI apps
echo "📱 Installing GUI applications..."
brew install --cask \
  webstorm \
  visual-studio-code \
  cursor \
  warp \
  rectangle \
  figma \
  postman \
  insomnia \
  pixelsnap \
  fork \
  tableplus \
  mongodb-compass \
  sequel-pro \
  responsively \
  microsoft-word \
  microsoft-excel \
  microsoft-outlook \
  microsoft-teams \
  microsoft-onedrive \
  whatsapp \
  telegram \
  spotify \
  shottr \
  slack \
  docker \
  pycharm-ce \
  ollama \
  proxyman \
  cleanmymac \
  raycast \
  json-viewer

# Install QuickLook plugins
echo "👀 Installing QuickLook plugins..."
brew install --cask \
  qlcolorcode \
  qlstephen \
  qlmarkdown \
  quicklook-json \
  betterzip

# Set PNPM global binary path in .zshrc if not already present
echo "📦 Configuring PNPM..."
grep -qxF 'export PNPM_HOME="$HOME/Library/pnpm"' ~/.zshrc || echo 'export PNPM_HOME="$HOME/Library/pnpm"' >> ~/.zshrc
grep -qxF 'export PATH="$PNPM_HOME:$PATH"' ~/.zshrc || echo 'export PATH="$PNPM_HOME:$PATH"' >> ~/.zshrc

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Install global JS tooling
echo "🚀 Installing global JavaScript tools..."
pnpm add -g \
  @angular/cli \
  @ngrx/cli \
  @angular-devkit/schematics-cli \
  @oracle/suitecloud-cli \
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
  webpack-cli \
  eslint \
  prettier \
  husky \
  lint-staged \
  commitizen \
  semantic-release \
  compodoc \
  lighthouse-ci \
  @storybook/cli

# Safely add NVM setup and aliases to .zshrc
echo "🔧 Configuring shell environment..."
grep -qxF 'export NVM_DIR="$HOME/.nvm"' ~/.zshrc || echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
grep -qxF '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"' ~/.zshrc || echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc

# Add useful aliases
grep -qxF 'alias ws="webstorm ."' ~/.zshrc || echo 'alias ws="webstorm ."' >> ~/.zshrc
grep -qxF 'alias dev="pnpm dev || yarn dev || npm run dev"' ~/.zshrc || echo 'alias dev="pnpm dev || yarn dev || npm run dev"' >> ~/.zshrc
grep -qxF 'alias ng="npx ng"' ~/.zshrc || echo 'alias ng="npx ng"' >> ~/.zshrc
grep -qxF 'alias sdf="npx suitecloud"' ~/.zshrc || echo 'alias sdf="npx suitecloud"' >> ~/.zshrc

# Configure Java for NetSuite SDF
grep -qxF 'export JAVA_HOME="/opt/homebrew/opt/openjdk@11"' ~/.zshrc || echo 'export JAVA_HOME="/opt/homebrew/opt/openjdk@11"' >> ~/.zshrc
grep -qxF 'export PATH="$JAVA_HOME/bin:$PATH"' ~/.zshrc || echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~/.zshrc

# Apply .zshrc changes
source ~/.zshrc

# System UI Preferences
echo "🌙 Configuring system preferences..."

# Enable dark mode
osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'

# Set accent color to Multicolor
defaults delete -g AppleAccentColor 2>/dev/null

# Dock preferences
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock minimize-to-application -bool true
killall Dock

# Trackpad preferences
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write -g com.apple.trackpad.scaling -float 3

# Keyboard preferences for faster coding
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Scrollbar preferences
defaults write -g AppleShowScrollBars -string "WhenScrolling"
defaults write -g AppleScrollerPagingBehavior -int 1

# Finder preferences
echo "🧭 Configuring Finder..."
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
killall Finder

echo "🎯 Creating development directories..."
mkdir -p ~/Development/{angular,netsuite,fullstack}
mkdir -p ~/Development/netsuite/{sdf-projects,scripts,customizations}

echo "📝 Setup complete! 🔄 Restart terminal or run 'source ~/.zshrc'"
echo "✅ Your Mac is now ready for development! 🚀"