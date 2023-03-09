#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion@2

# Switch to using brew-installed bash as default shell
if ! grep -Fq "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew uninstall aircrack-ng
brew uninstall bfg
brew uninstall binutils
brew uninstall binwalk
brew uninstall cifer
brew uninstall dex2jar
brew uninstall dns2tcp
brew uninstall fcrackzip
brew uninstall foremost
brew uninstall hashpump
brew uninstall hydra
brew uninstall john
brew uninstall knock
brew uninstall netpbm
brew uninstall nmap
brew uninstall pngcheck
brew uninstall socat
brew uninstall sqlmap
brew uninstall tcpflow
brew uninstall tcpreplay
brew uninstall tcptrace
brew uninstall ucspi-tcp # `tcpserver` etc.
brew uninstall xpdf
brew uninstall xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install archey4
brew install git-flow-avh
brew install devdash
brew install htop
brew install font-roboto font-fira-code font-fira-code-nerd-font font-fira-mono-for-powerline font-liberation
brew install koekeishiya/formulae/yabai

# Install macos casks
brew tap homebrew/cask-drivers
brew install --cask google-chrome google-drive
brew install --cask google-cloud-sdk
brew install --cask logitech-options uhk-agent karabiner-elements
brew install --cask alfred
brew install --cask sublime-text
brew install --cask kitty
brew install --cask dash
brew install --cask dropbox kdrive beyond-compare
brew install --cask cleanmymac
brew install --cask bartender
brew install --cask logseq
brew install --cask daisydisk
brew install --cask fantastical
brew install --cask threema-work slack
brew install --cask roon tidal qobuz
brew install --cask affinity-designer affinity-photo affinity-publisher
brew install --cask iterm2
brew install --cask arc
brew install --cask bitwarden
brew install --cask sizeup cinch
brew install --cask path-finder
brew install --cask istat-menus
brew install --cask readdle-spark
brew install --cask jetbrains-toolbox

brew install --cask vlc
brew install --cask xld

brew install helm
brew install --cask lens

# Remove outdated versions from the cellar.
brew cleanup
