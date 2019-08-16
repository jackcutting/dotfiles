# if ! is-macos -o ! is-executable brew; then
#   echo "Skipped: Homebrew-Cask"
#   return
# fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  alfred
  atom
  firefox
  firefox-developer-edition
  google-chrome
  google-chrome-canary
  insomnia
  iterm2
  ngrok
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlstephen
  qlvideo
  quicklook-csv
  quicklook-json
  sequel-pro
  slack
  spotify
  sublime-text
  the-unarchiver
  transmit
  visual-studio-code
  webpquicklook
)

brew cask --force install "${apps[@]}"
