# fzf.bash

# If ble/contrib/integration/fzf cannot find the fzf directory, please set the
# following variable "_ble_contrib_fzf_base" manually.  The value
# "/path/to/fzf-directory" should be replaced by a path to the fzf directory
# such as "$HOME/.fzf" or "/usr/share/fzf" that contain
# "shell/{completion,key-bindings}.bash" or "{completion,key-bindings}.bash".

_ble_contrib_fzf_base=/opt/homebrew/opt/fzf

# Setup fzf
# ---------
if [[ -d /opt/homebrew && ! "$PATH" == *"/opt/homebrew/opt/fzf/bin"* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
elif [[ -d /home/linuxbrew/.linuxbrew && ! "$PATH" == *"/home/linuxbrew/.linuxbrew/opt/fzf/bin"* ]]; then
  export PATH="${PATH:+${PATH}:}/home/linuxbrew/.linuxbrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
if [[ $- == *i* ]]; then
  # Note: If you would like to combine fzf-completion with bash_completion, you
  # need to load bash_completion earlier than fzf-completion.

  #source /path/to/bash_completion.sh

  if [[ ${BLE_VERSION-} ]]; then
    ble-import -d integration/fzf-completion
  else
		# shellcheck source=/dev/null
		test -d /opt/homebrew && source /opt/homebrew/opt/fzf/shell/completion.bash 2> /dev/null
		test -d /home/linuxbrew/.linuxbrew && source /home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.bash 2> /dev/null
  fi
fi

# Key bindings
# ------------
if [[ ${BLE_VERSION-} ]]; then
  ble-import -d integration/fzf-key-bindings
else
	# shellcheck source=/dev/null
	test -d /opt/homebrew && source /opt/homebrew/opt/fzf/shell/key-bindings.bash
	test -d /home/linuxbrew/.linuxbrew && source /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.bash
fi

if [[ ${BLE_VERSION-} ]]; then
  _ble_contrib_fzf_git_config=key-binding:sabbrev:arpeggio
  ble-import -d integration/fzf-git
fi
