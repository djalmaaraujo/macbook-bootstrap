# Macbook Bootstrap

## Pre
- Backup .ssh
- Backup /etc/hosts
- Backup Windows VM's
- Backup ~/dev
- Backup ~/prtrello.json
- Backup MySQL + PGSQL Databases

## Installations

### Essencial
- Mac OS Newest version installed? Check for update
- Xcode (App Store)
  - Install Command line tools (Includes GIT)
  ```bash
  xcode-select --install
  ```

- Change Terminal Shell to **ZSH**
- Install Dropbox [[Download](http://dropbox.com/)]
- Install Homebrew [[Download](http://mxcl.github.io/homebrew/)]
- Install Node [[Download](http://nodejs.org/)]
- Install https://github.com/tj/n
- Create ~/dev folder
- Install dotfiles from Bitbucket
- Create symlink from .oh-my-z-shell to dev/me/dotfiles
- Install 1Password [[Download](https://agilebits.com/onepassword)]
	- Use archive file from Dropbox
- Install iTerm.app [[Download](http://www.iterm2.com/#/section/home)]
- Install Breeze App [[Download](http://www.autumnapps.com/breeze/)]

### System config
- Show hidden files
```
defaults write com.apple.finder AppleShowAllFiles YES
```
- Enable key repeat
```
defaults write -g ApplePressAndHoldEnabled -bool false
```

- Remove all stupid Dock application
```
defaults write com.apple.dock static-only -bool TRUE; killall Dock
```

- Auto hide Dock
```
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.8 && killall Dock
```

### Dock

- Dock: enable highlight hover effect for the grid view of a stack
```bash
defaults write com.apple.dock mouse-over-hilite-stack -bool true
```

- Set the icon size of Dock items to 48 pixels
```bash
defaults write com.apple.dock tilesize -int 48
```

- Dock: enable magnification
```bash
defaults write com.apple.dock magnification -bool false
```

- Set magnification icon size to 80 pixels
```bash
defaults write com.apple.dock largesize -float 80
```

- Dock: minimize windows into their application's icon
```bash
defaults write com.apple.dock minimize-to-application -bool true
```

- Dock: enable spring loading for all Dock items
```bash
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
```

- Dock: enable animation when opening applications
```bash
defaults write com.apple.dock launchanim -bool false
```

- Speed up Mission Control animations
```bash
defaults write com.apple.dock expose-animation-duration -float 0.1
```

- General: enable Dashboard as an overlay
```bash
defaults write com.apple.dock dashboard-in-overlay -bool false
```

- General: automatically rearrange Spaces based on most recent use
```bash
defaults write com.apple.dock mru-spaces -bool true
```

- Remove the auto-hiding Dock delay
```bash
defaults write com.apple.dock autohide-delay -float 0
```

- Speed up animation when hiding/showing the Dock
```bash
defaults write com.apple.dock autohide-time-modifier -float 0.3
```

- Dock: automatically hide and show
```bash
defaults write com.apple.dock autohide -bool true
```

- Dock: make icons of hidden applications translucent
```bash
defaults write com.apple.dock showhidden -bool false
```

### Screen                                                                   #

- Require password immediately after sleep or screen saver begins
```bash
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
```

- Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
```bash
defaults write com.apple.screencapture type -string "png"
```

- Enable subpixel font rendering on non-Apple LCDs
```bash
defaults write NSGlobalDomain AppleFontSmoothing -int 2
```

### Finder                                                                   #

- Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
```bash
defaults write com.apple.finder QuitMenuItem -bool true
```

- Finder: disable window and Get Info animations
```bash
defaults write com.apple.finder DisableAllAnimations -bool true
```

- General: Enable icons for hard drives, servers, and removable media on the desktop
```bash
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
```

- Finder: show hidden files by default
```bash
defaults write com.apple.finder AppleShowAllFiles -bool true
```

- Finder: show all filename extensions
```bash
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
```

- Finder: show status bar
```bash
defaults write com.apple.finder ShowStatusBar -bool true
```

- Finder: show path bar
```bash
defaults write com.apple.finder ShowPathbar -bool true
```

- Finder: allow text selection in Quick Look
```bash
defaults write com.apple.finder QLEnableTextSelection -bool true
```

- Finder: display full path as Finder window title
```bash
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
```

- When performing a search, search the current folder by default
```bash
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
```

- General: enable the warning when changing a file extension
```bash
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true
```

- Finder: enable spring loading for directories
```bash
defaults write NSGlobalDomain com.apple.springing.enabled -bool false
```

- Remove the spring loading delay for directories
```bash
defaults write NSGlobalDomain com.apple.springing.delay -float 0
```

- General: create .DS_Store files on network volumes
```bash
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool false
```

- Finder: automatically open a new window when a volume is mounted
```bash
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
```

- Use columns view in all Finder windows by default
- Four-letter codes for the other view modes: `icnv`, `Nlsv`, `Flwv`
```bash
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
```

- General: enable the warning before emptying the Trash
```bash
defaults write com.apple.finder WarnOnEmptyTrash -bool true
```

- Finder: enable AirDrop over Ethernet and on unsupported Macs running Lion
```bash
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
```

- Show the ~/Library folder
```bash
chflags nohidden ~/Library
```

- Organize my Finder Favorites like the preview [Preview](http://cl.ly/image/2V3s3I0i3O2n)

### Other Applications
- Install VS Code [Download](https://code.visualstudio.com/)
- Install Spotify [[Download](http://spotify.com/)]
- Install Smartgit [[Download](http://www.syntevo.com/smartgithg/)]
- Install Bartender 2 App  [[Download](http://www.macbartender.com/Demo/Bartender%202.zip)]
- Install VirtualBox [[Download](https://www.virtualbox.org/)] (Vm's Backup HD)
- Install Beamer App [[Download](http://beamer-app.com/download?cid=275562564.1437688109)]
- Chrome launcher app
- Sketch
- Tunnel Bear
- Postgres App
- Screen Hero
- Fantastical
- Dollar Value
- iStats menus5 
- Caffeine
- Tunnel Blick
- Reacue Time
- Display Maid

### Ruby/Node Environment
- Install RVM  [[Download](https://rvm.io/)]
- Install N  [[Download](https://github.com/tj/n)]
