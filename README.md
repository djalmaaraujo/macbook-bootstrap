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
