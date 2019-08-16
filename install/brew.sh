if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  brew-php-switcher
  composer
  ctags
  dockutil
  git
  git-extras
  gnu-sed --with-default-names
  grep --with-default-names
  htop
  httpie
  hub
  iftop
  imagemagick
  mpv
  nmap
  openssl
  php@7.0
  php@7.1
  php@7.2
  potrace
  python
  python3
  sqlmap
  the_silver_searcher
  thefuck
  tig
  tmux
  unrar
  vim
  watchman
  webkit2png
  wget
  wifi-password
  yarn
  zsh
  zsh-completions
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"
