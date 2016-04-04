# Macbook Bootstrap

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
- Create ~/dev folder
- Install dotfiles from Bitbucket
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

- Use columns view in all Finder windows by default
- Four-letter codes for the other view modes: `icnv`, `Nlsv`, `Flwv`
```bash
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
```

- Finder: enable AirDrop over Ethernet and on unsupported Macs running Lion
```bash
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
```

- Organize my Finder Favorites like the preview [Preview](http://cl.ly/image/2V3s3I0i3O2n)

### Other Applications
- Install Sublime Text 3 [[Download](http://www.sublimetext.com/3)]
- Install Spotify [[Download](http://spotify.com/)]
- Install Smartgit [[Download](http://www.syntevo.com/smartgithg/)]
- Install Bartender 2 App  [[Download](http://www.macbartender.com/Demo/Bartender%202.zip)]
- Install Franz  [[Download](http://meetfranz.com)]
- Install VirtualBox [[Download](https://www.virtualbox.org/)] (Vm's Backup HD)
- Install VLC (App Store)
- Install Beamer App [[Download](http://beamer-app.com/download?cid=275562564.1437688109)]
- Chrome launcher app
- Adobe Creative Cloud

### Ruby Environment
- Install RVM  [[Download](https://rvm.io/)]
- Install N  [[Download](https://github.com/tj/n)]

### Databases (Not required)
- Mongo
- Redis
- postgres

#### MYSQL (Mysql 5.6 for Sigex)
```bash
brew install mysql
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
mysql.server start
/usr/local/Cellar/mysql/5.5.27/bin/mysqladmin -u root password 'new-password'
brew info mysql
```
