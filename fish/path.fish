# Grab my $PATHs from ~/.extra
set -l PATH_DIRS (cat "$HOME/.extra" | grep "^PATH" | \
    # clean up bash PATH setting pattern
    sed "s/PATH=//" | sed "s/\\\$PATH://" | \
    # rewrite ~/ to use {$HOME}
    sed "s/~\//{\$HOME}\//")

set -l PA ""

for entry in (string split \n $PATH_DIRS)
    # resolve the {$HOME} substitutions
    set -l resolved_path (eval echo $entry)
    if test -d "$resolved_path"; # and not contains $resolved_path $PATH
        set PA $PA "$resolved_path"
    end
end

# # rvm
# if which -s rvm;
# 	set PA $PA /Users/paulirish/.rvm/gems/ruby-2.2.1/bin
# end


set -l paths "
# yarn binary
$HOME/.yarn/bin
$GOPATH/bin
#Brew
/usr/local/bin
# Anaconda
$HOME/anaconda2/bin
# Python
#/usr/local/opt/python/libexec/bin
# gnubin
/usr/local/opt/make/libexec/gnubin

# UserHomeBin
$HOME/.bin
# UserLocalHomeBin
$HOME/.local/bin

# yarn global modules (hack for me)
$HOME/.config/yarn/global/node_modules/.bin
"

for entry in (string split \n $paths)
    # resolve the {$HOME} substitutions
    set -l resolved_path (eval echo $entry)
    if test -d "$resolved_path";
        set PA $PA "$resolved_path"
    end
end

# Google Cloud SDK.
if test -f "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
  # The next line updates PATH for the Google Cloud SDK.
  source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
end

set -x -g PATH $PATH $PA
launchctl setenv PATH "$PATH"