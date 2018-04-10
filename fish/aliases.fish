

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Utilities
function g        ; git $argv ; end
function grep     ; command grep --color=auto $argv ; end



# mv, rm, cp
alias mv 'command gmv --interactive --verbose'
alias rm 'command grm --interactive --verbose'
alias cp 'command gcp --interactive --verbose'

alias chmox='chmod +x'

alias cask='brew cask' # i <3 u cask
alias where=which # sometimes i forget

# typos
alias brwe=brew  
alias gti=git
alias yearn=yarn

alias hosts='sudo $EDITOR /etc/hosts'   # yes I occasionally 127.0.0.1 twitter.com ;)

alias push="git push"
alias upgrade "brew upgrade; brew cu -a"

alias ag='ag --follow --hidden'

alias diskspace_report="df -P -kHl"
alias free_diskspace_report="diskspace_report"

alias master="git checkout master"

# Networking. IP address, dig, DNS
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"
# wget sucks with certificates. Let's keep it simple.
alias wget="curl -O"

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

# Shortcuts
alias g="git"
alias v="vim"
alias ungz="gunzip -k"

# File size
alias fs="stat -f \"%z bytes\""

# emptytrash written as a function

# Update installed Ruby gems, Homebrew, npm, and their installed packages
alias brew_update="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor; npm-check -g -u"
alias update_brew_npm_gem='brew_update; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update --no-document'

# Ledger
# General
#
# In order to have everything from the ecosystem readily available, you'll just
# need to source the alias file. This is done automatically when using
# tmux/tmuxinator. If you don't use tmuxinator *or* when opening a new window
# inside the active tmux session, the following alias comes in handy:
alias sl='bash "cd ~/git/ledger/GSWL-private && source ~/git/ledger/GSWL-ecosystem/alias"' # Start ledger

# Tmux / Tmuxinator
#
# Define the alias to start any Ledger interaction. One would usually have a
# decryption and/or mount command before starting the actual session (i.e.
# decrypt /path/to/folder && tmux start).
alias slt='tmux start GSWL-private' # Start Ledger Tmux
# Define the alias to stop any Ledger interaction. One would usually have an
# umount and/or an encryption and/or a backup command afterwards (i.e. kill
# tmux kill && encrypt /path/to/folder && backup /path/to/folder)
alias klt='tmux kill-session -t GSWL-private' # Kill Ledger Tmux