My macOS [dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.abz8qz21x), which includes:

- zsh config
- Brewfile
- Git config

## Requirements

The shell config is for zsh, which is the default shell in newer versions of macOS. Also required:

- [Homebrew](https://brew.sh/)
- [Oh My Zsh](https://ohmyz.sh/)
- [nvm](https://github.com/nvm-sh/nvm)

## Setup

Clone the dotfiles into your home folder:

```bash
cd ~
git clone https://github.com/gakimball/dotfiles .dotfiles
```

Install Homebrew dependencies:

```bash
cd .dotfiles
brew tap homebrew-bundle
brew bundle
```

Symlink the config files:

```bash
ln -sv ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sv ~/.dotfiles/.zshrc ~/.zshrc
```

Reload your shell:

```bash
omz reload
```

## Contents

### zshrc

Extra configuration:

- Spellcheck for commands and flags
- Default editor is `nano`
- Enable tty input for GnuPG

Extra aliases:

- `o`: open the current working directory in Finder
- `zshconfig`: edit zsh config

### Brewfile

Installs software using Homebrew, Homebrew Cask, and [`mas`](https://github.com/mas-cli/mas).

- **Browsers:** Firefox, Google Chrome
- **Communication:** Slack
- **Design:** Pixelmator, Sketch
- **Development (GUI):** Insomnia, Patterns, Transmit, VirtualBox, Xcode
- **Development (CLI):** diff-so-fancy, ffmpeg, GnuPG, micro, nano
- **Media:** ImageOptim, Kap, The Unarchiver, Spotify, VLC
- **Bonus:** Cowsay, Fortune

### .gitconfig

The Git config includes my identity and some helpful defaults:

- Use diff-so-fancy for diffs
- Use a compact log format
- Require commits to be GPG signed
- Use "simple" push method
- Add Git LFS support

## License

MIT &copy; [Geoff Kimball](http://geoffkimball.com)
