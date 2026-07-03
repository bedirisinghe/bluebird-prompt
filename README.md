# bluebird-prompt
A lightweight ZSH prompt featuring a clean Powerline-style design, Git branch integration, and Nerd Font support. No frameworks, plugins, or external dependencies required.

## Features

- Clean Powerline-inspired design
- Displays username, current directory, and Git branch
- Lightweight and fast
- No Oh My Zsh required
- No Powerlevel10k required
- Homebrew installable
- Nerd Font support

## Installation

### Homebrew (recommended)

```sh
brew tap bedirisinghe/bluebird-prompt https://github.com/bedirisinghe/bluebird-prompt
brew install --HEAD bedirisinghe/bluebird-prompt/bluebird-prompt
```
Then follow the post-install instructions printed by Homebrew (add the `source` line to `~/.zshrc` and set your terminal font).

### Screen Shot
<img width="1240" height="502" alt="Image 2026-07-04 at 02 48" src="https://github.com/user-attachments/assets/07759654-6d3e-466a-b6bb-880d98136276" />

### Manual

```sh
git clone https://github.com/bedirisinghe/bluebird-prompt.git
cd bluebird-prompt
bash install.sh
source ~/.zshrc
```

## Font

Set your terminal font to **MesloLGL Nerd Font** after installation. The font file is bundled and installed automatically.

Alternatively, install it via Homebrew Cask:

```sh
brew install --cask font-meslo-lg-nerd-font
```

## Uninstall

### Homebrew

```sh
brew uninstall bluebird-prompt
brew untap bedirisinghe/bluebird-prompt
```

### Manual

```sh
bash uninstall.sh
```
