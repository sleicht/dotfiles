# Only source ~/.bash_profile if interactive shell
# Provide some extra PATH locations for things using a non-interactive shell
# such as git-annex, mosh, and rsync via homebrew.

if [[ -n "$PS1" ]] ; then
	source ~/.bash_profile
else
	PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
	return
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash