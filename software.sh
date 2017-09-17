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

binaries=(
  git
  ruby
  wget
  python
)

echo "installing binaries..."
brew install ${binaries[@]}

apps=(
  alfred
  atom
  charles
  dash
  docker
  doxie
  dropbox
  firefox
  firefoxdeveloperedition
  ghostlab
  github-desktop
  google-chrome
  google-chrome-canary
  hyper
  imageoptim
  opera
  opera-beta
  opera-mobile-emulator
  ringcentral
  safari-technology-preview
  sketch
  skype
  superduper
  virtualbox
  zeplin
)

# Install apps to /Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# fonts
fonts=(
  font-droid-sans
  font-droid-sans-mono
  font-droid-serif
  font-exo
  font-exo2
  font-fontawesome
  font-input
  font-lato
  font-league-gothic
  font-lobster
  font-lobster-two
  font-lora
  font-merriweather
  font-open-sans
  font-open-sans-condensed
  font-oswald
  font-patua-one
  font-permanent-marker
  font-pt-sans
  font-pt-serif
  font-raleway
  font-raleway-dots
  font-roboto
  font-roboto-condensed
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

# install global ruby gems
gem install jekyll
