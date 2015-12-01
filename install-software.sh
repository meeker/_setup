#!/bin/bash

# Check for Homebrew, install if not there
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# add taps
brew tap homebrew/versions
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts


# install caskroom
brew install caskroom/cask/brew-cask

binaries=(
  git
  node4-lts
  ruby
  wget
  python
)

echo "installing binaries..."
brew install ${binaries[@]}

apps=(
  adobe-creative-cloud
  alfred
  android-studio
  charles
  chromium
  doxie
  dropbox
  firefox
  firefoxdeveloperedition
  google-chrome-canary
  ghostlab
  github-desktop
  hipchat
  imageoptim
  java6
  joinme
  logitech-myharmony
  logitech-unifying
  opera
  opera-mobile-emulator
  opera-beta
  reflector
  sketch
  skype
  sublime-text
  superduper
  virtualbox
  vagrant
  webkit-nightly
)

# Install apps to /Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# fonts
fonts=(
  font-architects-daughter
  font-bitter
  font-crete-round
  font-droid-sans
  font-droid-sans-mono
  font-droid-serif
  font-exo
  font-fontawesome
  font-lato
  font-league-gothic
  font-lobster
  font-open-sans
  font-open-sans-condensed
  font-oswald
  font-permanent-marker
  font-pt-sans
  font-quantico
  font-raleway
  font-raleway-dots
  font-roboto
  font-roboto-mono
  font-roboto-slab
  font-source-code-pro
  font-source-sans-pro
  font-vollkorn
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

# Remove installation files
brew cleanup
brew cask cleanup

# install global node modules and gems
gem install jekyll
npm install -g grunt-cli gulp bower
