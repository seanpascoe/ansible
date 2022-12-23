### setup ansible

```bash
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```

### gnome settings

- setup gnome tweaks/settings using dconf watch
- https://askubuntu.com/questions/971067/how-can-i-script-the-settings-made-by-gnome-tweak-tool

### setup git

```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
```

### dotfiles

- git clone https://seanpascoe@github.com/seanpascoe/dotfiles.git ~/.dotfiles
- symlink files (or maybe just copy them over and keep updated via ansible cront?)

### bash-git-prompt

- pull in repo

### goto.sh

- copy file from github

### setup vscode

- .deb link: https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
- setup settings sync