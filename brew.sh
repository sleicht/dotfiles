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

## Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew uninstall -f aircrack-ng
brew uninstall -f bfg
brew uninstall -f binutils
brew uninstall -f binwalk
brew uninstall -f cifer
brew uninstall -f dex2jar
brew uninstall -f dns2tcp
brew uninstall -f fcrackzip
brew uninstall -f foremost
brew uninstall -f hashpump
brew uninstall -f hydra
brew uninstall -f john
brew uninstall -f knock
brew uninstall -f netpbm
brew uninstall -f nmap
brew uninstall -f pngcheck
brew uninstall -f socat
brew uninstall -f sqlmap
brew uninstall -f tcpflow
brew uninstall -f tcpreplay
brew uninstall -f tcptrace
brew uninstall -f ucspi-tcp
brew uninstall -f xpdf

# Install other useful binaries.
brew tap homebrew/cask-fonts
brew install ack
brew install archey4
brew install argocd
brew install bat bat-extras
brew install broot
brew install docker
brew install docker-compose
brew install dust
brew install eza
brew install fzf
brew install gh
brew install git
brew install git-flow
brew install git-lfs
brew install glab
brew install gs
brew install helm
brew install htop
brew install imagemagick
brew install jfrog-cli
brew install jq
brew install lua
brew install lynx
brew install ncdu
brew install p7zip
brew install pigz
brew install pnpm
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install starship
brew install terraform
brew install tmux
brew install tree
brew install vale
brew install vbindiff
brew install volta
brew install yarn
brew install zopfli
brew install font-roboto font-fira-code font-fira-code-nerd-font font-fira-mono-nerd-font font-jetbrains-mono-nerd-font font-noto-nerd-font font-liberation font-liberation-nerd-font
brew install koekeishiya/formulae/yabai

# Install macos casks
brew install --cask affinity-designer affinity-photo affinity-publisher
brew install --cask arc
brew install --cask apache-directory-studio
brew install --cask bartender
brew install --cask bettertouchtool
brew install --cask beyond-compare
brew install --cask bitwarden
brew install --cask camunda-modeler
brew install --cask cinch
brew install --cask citrix-workspace
brew install --cask cleanmymac
brew install --cask confluent-cli
brew install --cask daisydisk
brew install --cask dash
brew install --cask deepl
brew install --cask dropbox
brew install --cask fantastical
brew install --cask finicky
brew install --cask fman
brew install --cask git-credential-manager
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask google-drive
brew install --cask lens
brew install --cask istat-menus
brew install --cask jetbrains-toolbox
brew install --cask jprofiler
brew install --cask karabiner-elements
brew install --cask kdrive
brew install --cask keystore-explorer
brew install --cask kitty
brew install --cask lens
brew install --cask logi-options-plus
brew install --cask logseq
brew install --cask miro
brew install --cask raindropio
brew install --cask raycast
brew install --cask roon
brew install --cask sizeup
brew install --cask slack
brew install --cask readdle-spark
brew install --cask sublime-text
brew install --cask tidal
brew install --cask uhk-agent
brew install --cask visualvm
brew install --cask vlc
brew install --cask xld

# Remove outdated versions from the cellar.
brew cleanup
