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
- Install Homebrew [[Download](http://mxcl.github.io/homebrew/)]
- Install Node [[Download](http://nodejs.org/)]
- Create ~/dev folder
- Install dotfiles from Bitbucket
- Install Dropbox [[Download](http://dropbox.com/)]
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
- Organize my Finder Favorites like the preview [Preview](http://cl.ly/image/2V3s3I0i3O2n)

### Other Applications
- Install Sublime Text 3 [[Download](http://www.sublimetext.com/3)]
- Install Alfred 2 [[Download](http://alfredapp.com/)]
- Install Rdio [[Download](http://rdio.com/)]
- Install Smartgit [[Download](http://www.syntevo.com/smartgithg/)]
- Install HipChat [[Download](https://www.hipchat.com/)]
- Install Bartender App  [[Download](http://www.macbartender.com/Demo/Bartender.zip)]
- Install VirtualBox [[Download](https://www.virtualbox.org/)] (Vm's Backup HD)
- Install uTorrent [[Download](http://www.utorrent.com/)]
- Install VLC (App Store)
- Install Beamer App [[Download](http://beamer-app.com/download?cid=275562564.1437688109)]
- Adobe Cloud (PS, AI, ETC)
- Chrome launcher app
- Install Plex Media Server
- Adobe Creative Cloud

### Ruby Environment
- Install RVM  [[Download](https://rvm.io/)]
- Install N  [[Download](https://github.com/tj/n)]

### Databases (Not required)
- Mongo
- Redis
- postgres

#### MYSQL
```bash
brew install mysql
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
mysql.server start
/usr/local/Cellar/mysql/5.5.27/bin/mysqladmin -u root password 'new-password'
brew info mysql
```
