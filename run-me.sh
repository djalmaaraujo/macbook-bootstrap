printf "################ Setting up things ################\n\n"

printf "Show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles YES
printf "Enable key repeat\n"
defaults write -g ApplePressAndHoldEnabled -bool false

printf "Remove all stupid Dock application\n"
defaults write com.apple.dock static-only -bool TRUE; killall Dock

printf "Auto hide Dock\n"
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.8 && killall Dock

printf "\n\nDock\n\n"

printf "Dock: enable highlight hover effect for the grid view of a stack\n"
defaults write com.apple.dock mouse-over-hilite-stack -bool true

printf "Set the icon size of Dock items to 48 pixels\n"
defaults write com.apple.dock tilesize -int 48

printf "Dock: enable magnification\n"
defaults write com.apple.dock magnification -bool false

printf "Set magnification icon size to 80 pixels\n"
defaults write com.apple.dock largesize -float 80

printf "Dock: minimize windows into their applications icon\n"
defaults write com.apple.dock minimize-to-application -bool true

printf "Dock: enable spring loading for all Dock items\n"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

printf "Dock: enable animation when opening applications\n"
defaults write com.apple.dock launchanim -bool false

printf "Speed up Mission Control animations\n"
defaults write com.apple.dock expose-animation-duration -float 0.1

printf "General: enable Dashboard as an overlay\n"
defaults write com.apple.dock dashboard-in-overlay -bool false

printf "General: automatically rearrange Spaces based on most recent use\n"
defaults write com.apple.dock mru-spaces -bool true

printf "Remove the auto-hiding Dock delay\n"
defaults write com.apple.dock autohide-delay -float 0

printf "Speed up animation when hiding/showing the Dock\n"
defaults write com.apple.dock autohide-time-modifier -float 0.3

printf "Dock: automatically hide and show\n"
defaults write com.apple.dock autohide -bool true

printf "Dock: make icons of hidden applications translucent\n"
defaults write com.apple.dock showhidden -bool false

printf "\n\nScreen\n\n"

printf "Require password immediately after sleep or screen saver begins\n"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)\n"
defaults write com.apple.screencapture type -string "png"

printf "Enable subpixel font rendering on non-Apple LCDs\n"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

printf "\n\nFinder\n\n"

printf "Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons\n"
defaults write com.apple.finder QuitMenuItem -bool true

printf "Finder: disable window and Get Info animations\n"
defaults write com.apple.finder DisableAllAnimations -bool true

printf "General: Enable icons for hard drives, servers, and removable media on the desktop\n"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

printf "Finder: show hidden files by default\n"
defaults write com.apple.finder AppleShowAllFiles -bool true

printf "Finder: show all filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Finder: show status bar\n"
defaults write com.apple.finder ShowStatusBar -bool true

printf "Finder: show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true

printf "Finder: allow text selection in Quick Look\n"
defaults write com.apple.finder QLEnableTextSelection -bool true

printf "Finder: display full path as Finder window title\n"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

printf "When performing a search, search the current folder by default\n"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

printf "General: enable the warning when changing a file extension\n"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true

printf "Finder: enable spring loading for directories\n"
defaults write NSGlobalDomain com.apple.springing.enabled -bool false

printf "Remove the spring loading delay for directories\n"
defaults write NSGlobalDomain com.apple.springing.delay -float 0

printf "General: create .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool false

printf "Finder: automatically open a new window when a volume is mounted\n"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

printf "Use columns view in all Finder windows by default\n"
printf "Four-letter codes for the other view modes: icnv, Nlsv, Flwv\n"
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

printf "General: enable the warning before emptying the Trash\n"
defaults write com.apple.finder WarnOnEmptyTrash -bool true

printf "Finder: enable AirDrop over Ethernet and on unsupported Macs running Lion\n"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

printf "Show the ~/Library folder\n"
chflags nohidden ~/Library

printf "Allow Apps from Anywhere in Gatekeeper for macOS Sierra\n"
sudo spctl --master-disable

printf "################ 💩 DONE 💩 ################\n\n"
