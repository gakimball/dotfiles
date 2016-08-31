# dotfiles

My dotfiles.

## Installation

Download into home directory:

```bash
cd ~
git clone https://github.com/gakimball/dotfiles .dotfiles
```

Source files in `.bash_profile`:

```bash
source /Users/geoff/.dotfiles/.env
source /Users/geoff/.dotfiles/.input
source /Users/geoff/.dotfiles/.prompt
```

## Contents

### env

- Puts Homebrew-installed nvm in PATH
- Puts rvm in PATH
- Adds `~/bin` to PATH
- Sets default editor to `pico`

### input

- Enables case-insensitive path matching

### prompt

- Enables fancy prompt with Git status

## License

MIT &copy; [Geoff Kimball](http://geoffkimball.com)
