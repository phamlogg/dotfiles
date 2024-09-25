# My config files

Dependencies:
- curl
- git
- zsh
- ohmyzsh
- ohmyposh
- tmux
- gcc
- node.js & npm
- xclip
- nvim

## zsh

### Install zsh
 
`sudo apt install zsh`

Verify installation
`zsh --version`

Make zsh default shell
`chsh -s $(which zsh)`

### Install ohmyzsh
Run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Install ohmyposh

`curl -s https://ohmyposh.dev/install.sh | bash -s`
By default the script will install to `/usr/local/bin`. Change the installation dir by using `-d` flag.
`curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin`

#### Install a nerd font

`oh-my-posh font install`

Configure terminal to use new font.

#### Make zsh use ohmyzsh (Should already be in `~/.zshrc`)
Add the following snippet as the last line to `~/.zshrc`

## nvim

### npm
```
# Check if node and npm exist
node -v
npm -v
```

```
# Install Node Version Manager nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

Running this above command downloads the script and runs it. The script clones the nvm repo to `~/.nvm`, and attempts to add the source lines from the snippet below to the correct profile file (`~/.zshrc`, `~/.bashrc`, or `~/.profile`)

```
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

### gcc

`sudo apt install gcc` or `sudo apt install build-essential`

Verify installation by running `gcc --version`

### xclip

`sudo apt install xclip`

