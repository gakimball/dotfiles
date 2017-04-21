# dotfiles

My [dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.abz8qz21x). Some features require Bash 4. Also includes my Homebrew bundle.

## Installation

Install Homebrew and homebrew-bundle:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew-bundle
```

Download into home directory:

```bash
cd ~
git clone https://github.com/gakimball/dotfiles .dotfiles
```

Run Brewfile to install software:

```bash
cd .dotfiles
brew bundle
```

Source files in `.bash_profile`:

```bash
source /Users/geoff/.dotfiles/.alias
source /Users/geoff/.dotfiles/.env
source /Users/geoff/.dotfiles/.input
source /Users/geoff/.dotfiles/.prompt
```

## Contents

### alias

Adds these alias commands:

- `l`: `ls -la`
- `..`: `cd ..`
- `...`: `cd ../..`
- `....`: `cd ../../..`
- `a`: `atom .`
- `gd`: `git diff`
- `gf`: `git fetch`
- `gfr <branch>`: `git fetch rebase origin <branch>`
- `gp`: `git push`
- `gpl`: `git pull`
- `gs`: `git status`

### env

- Puts Homebrew-installed nvm in PATH
- Puts rvm in PATH
- Adds `~/bin` to PATH
- Sets default editor to `nano`
- Adds Yarn support

### input

- Enables case-insensitive path matching
- Prepend `cd` command to directories automatically
- Correct spelling errors during tab completion
- Correct spelling errors in arguments supplied to `cd`

### prompt

- Enables fancy prompt with Git status

### Brewfile

Installs software using Homebrew, Homebrew Cask, and [`mas`](https://github.com/mas-cli/mas).

- **Browsers:** Firefox, Google Chrome
- **Communication:** Boxy, Slack, TweetBot, WhatsApp
- **Design:** Adobe Creative Cloud, Pixelmator, Sketch
- **Development:** Atom, Bash 4, Dash, ffmpeg, Heroku, Hyper, nano, nvm, Patterns, Postgres, Redis, Ruby, Transmit, VirtualBox, Xcode
- **Media:** Spotify, VLC
- **Stupid:** Cowsay, Fortune

## License

MIT &copy; [Geoff Kimball](http://geoffkimball.com)
