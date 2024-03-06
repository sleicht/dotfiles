# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
# shellcheck source=/dev/null
source "/opt/homebrew/opt/fzf/shell/completion.bash"

# Key bindings
# ------------
# shellcheck source=/dev/null
source "/opt/homebrew/opt/fzf/shell/key-bindings.bash"
