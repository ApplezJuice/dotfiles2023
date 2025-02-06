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
nvm ls      - to list versions
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

## NeoVim Specific Setup
Open neovim and install the plugins
```
nvim
:PlugInstall
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
bashrc
```
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
```
RGrep
```
sudo apt install ripgrep
```

Install win32yank
```
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
```

Install cmake and libs for CCLS and LSP
```
sudo apt install libncurses-dev
sudo apt install zlib1g-dev
sudo apt install cmake
sudo apt install libplib-dev
sudo apt install -y g++
```
For C#, install mono and dotnet
```
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt-get install -y dotnet-sdk-6.0
sudo apt install mono-devel
```

If you are missing any more libs, you can use this tool to find them
```
sudo apt-get install apt-file
apt-file update
apt-file search /usr/lib/x86_64-linux-gnu/libtinfo.so
```
