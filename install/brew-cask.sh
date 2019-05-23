if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  alfred
  android-studio
  atom
  docker
  dropbox
  firefox
  firefox-developer-edition
  genymotion
  google-chrome
  google-chrome-canary
  iterm2
  karabiner-elements
  ngrok
  postman
  react-native-debugger
  sequel-pro
  spotify
  sublime-text
  the-unarchiver
  transmit
  qlcolorcode
  qlstephen
  qlmarkdown
  quicklook-json
  qlprettypatch
  quicklook-csv
  qlimagesize
  webpquicklook
  qlvideo
  vagrant
  vagrant-manager
  virtualbox
)

brew cask --force install "${apps[@]}"
