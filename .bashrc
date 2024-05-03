# Only source ~/.bash_profile if interactive shell
# Provide some extra PATH locations for things using a non-interactive shell
# such as git-annex, mosh, and rsync via homebrew.

if [[ -n "$PS1" ]] ; then
	source ~/.bash_profile
else
	PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:/home/linuxbrew/.linuxbrew/bin:$PATH
	return
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH";

[ -f ~/.config/broot/launcher/bash/br ] && source ~/.config/broot/launcher/bash/br

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
