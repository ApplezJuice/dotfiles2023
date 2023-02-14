# Dotfiles2023

if resolve errors, check /etc/resolv.conf

Put into ~/.config

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt install neovim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo apt udpate

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```
To verify installation, enter: command -v nvm ...this should return 'nvm', if you receive 'command not found' or no response at all, close your current terminal, reopen it, and try again. Learn more in the nvm github repo.
```
nvm ls to list versions
nvm install --lts
```

https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip?WT.mc_id=-blog-scottha
```
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip
```

```
sudo vi ~/.bashrc
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/microverse-power.omp.json)"
. ~/.bashrc
```

TreeSitter
```
:TSInstallInfo
:TSInstall <LanguageToInstall>
:TSUpdate
```

```
npm install -g typescript typescript-language-server
```
