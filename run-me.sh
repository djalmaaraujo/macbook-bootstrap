# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
# Enable key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Remove all stupid Dock application
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# Auto hide Dock
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.8 && killall Dock

# Dock

# Dock: enable highlight hover effect for the grid view of a stack
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Set the icon size of Dock items to 48 pixels
defaults write com.apple.dock tilesize -int 48

# Dock: enable magnification
defaults write com.apple.dock magnification -bool false

# Set magnification icon size to 80 pixels
defaults write com.apple.dock largesize -float 80

# Dock: minimize windows into their application's icon
defaults write com.apple.dock minimize-to-application -bool true

# Dock: enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Dock: enable animation when opening applications
defaults write com.apple.dock launchanim -bool false

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# General: enable Dashboard as an overlay
defaults write com.apple.dock dashboard-in-overlay -bool false

# General: automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Speed up animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.3

# Dock: automatically hide and show
defaults write com.apple.dock autohide -bool true

# Dock: make icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool false

# Screen

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Finder

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# General: Enable icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: display full path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# General: enable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true

# Finder: enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool false

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# General: create .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool false

# Finder: automatically open a new window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Use columns view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `Nlsv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# General: enable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool true

# Finder: enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Show the ~/Library folder
chflags nohidden ~/Library