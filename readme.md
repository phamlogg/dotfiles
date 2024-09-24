# My config files

Dependencies:
- curl
- gcc
- git
- node.js & npm
- xclip
- nvim
- zsh
- ohmyzsh
- ohmyposh
- tmux

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
