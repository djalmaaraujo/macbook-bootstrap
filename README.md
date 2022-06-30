# Macbook Bootstrap

## Pre
- Backup .ssh
- Backup /etc/hosts
- Backup Windows VM's
- Backup ~/dev
- Backup MySQL + PGSQL Databases (usually I don't care)
- Backup ~/Downloads
- Backup ~/Desktop (should stop using.. but)
- Backup ~/.aws/
- Backuop ~/.zsh_history

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
- Install https://github.com/tj/n
- Create ~/dev folder
- Install dotfiles from Bitbucket
- Create symlink from .oh-my-z-shell to dev/me/dotfiles

```bash
ln -s "/Users/myuser/dev/me/dotfiles/plugins/djalma/djalma.plugin.zsh" /Users/myuser/.oh-my-zsh/plugins/djalma/djalma.plugin.zsh
```

- Install 1Password [[Download](https://agilebits.com/onepassword)]
	- Use archive file from Dropbox
- Install iTerm.app [[Download](http://www.iterm2.com/#/section/home)]
- Install Rectangle [[Download](https://rectangleapp.com/)]
- Organize my Finder Favorites like the preview [Preview](http://cl.ly/image/2V3s3I0i3O2n)

### System Config
```bash
curl -L https://github.com/djalmaaraujo/macbook-bootstrap/raw/master/run-me.sh | sh
```

### Personal
- Install Spotify [[Download](http://spotify.com/)]
- Dato

### Work
- Install VS Code [Download](https://code.visualstudio.com/)
- Figma
- Docker

### Not required
- Install Github Desktop
- Postgres App

### Ruby/Node Environment
- Install RVM  [[Download](https://rvm.io/)]
- Install N  [[Download](https://github.com/tj/n)]
