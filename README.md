# dotfiles

My [dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789#.abz8qz21x). Some features require Bash 4.

## Installation

Download into home directory:

```bash
cd ~
git clone https://github.com/gakimball/dotfiles .dotfiles
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
- Sets default editor to `pico`
- Adds Yarn support

### input

- Enables case-insensitive path matching
- Prepend `cd` command to directories automatically
- Correct spelling errors during tab completion
- Correct spelling errors in arguments supplied to `cd`

### prompt

- Enables fancy prompt with Git status

## License

MIT &copy; [Geoff Kimball](http://geoffkimball.com)
