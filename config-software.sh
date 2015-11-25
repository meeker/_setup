#!/usr/bin/env bash


###############################################################################
# Google Chrome & Google Chrome Canary                                        #
###############################################################################

# Use the system-native print preview dialog
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

# Expand the print dialog by default
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true


###############################################################################
# Tweetbot.app                                                                #
###############################################################################

# Bypass the annoyingly slow t.co URL shortener
defaults write com.tapbots.TweetbotMac OpenURLsDirectly -bool true

###############################################################################
# Sublime                                                                     #
###############################################################################

cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/
rm -r User
ln -s /Users/mark/Dropbox\ \(Personal\)/Apps/Sublime/User/


###############################################################################
# xScope                                                                     #
###############################################################################

defaults write com.iconfactory.mac.xScope generalShowDockIcon 0
defaults write com.iconfactory.xScope generalShowDockIcon 0

###############################################################################
# .bash_profile                                                               #
###############################################################################

cp _files/_bash_profile ~/.bash_profile

###############################################################################
# Terminal                                                                    #
###############################################################################

open _files/Tomorrow\ Night\ Bright.terminal

echo "Done. Note that some of these changes require a logout/restart to take effect."

