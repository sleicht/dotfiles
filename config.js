module.exports = {
  brew: [
    // http://conqueringthecommandline.com/book/ack_ag
    'ack',
    'ag',
    'angular-cli',
    'bash',
    'bash-completion',
    'homebrew/completions/brew-cask-completion',
    // Install GNU core utilities (those that come with macOS are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'docker',
    'docker-machine',
    'docker-compose',
    'dos2unix',
    // run this script when this file changes guy.
    'entr',
    'fasd',
    'ffmpeg --with-libvpx',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'firebase-cli',
    'fzf',
    'fortune',
    'readline', // ensure gawk gets good readline
    'gawk',
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    'gifsicle',
    'git',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --with-default-names',
    // github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
    'hub',
    // better, more recent grep
    'homebrew/dupes/grep',
    // https://github.com/jkbrzt/httpie
    'httpie',
    'htop',
    'imagemagick --with-webp',
    // jq is a sort of JSON grep
    'jq',
    // Mac App Store CLI: https://github.com/mas-cli/mas
    'mas',
    'mackup',
    // Install some other useful utilities like `sponge`
    'moreutils',
    // mtr - ping & traceroute. best.
    'mtr',
    // find where your diskspace went
    'ncdu',
    'nmap',
    'openconnect',
    // colored logcat guy
    'pidcat',
    'pv',
    'reattach-to-user-namespace',
    'rename',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'sdkman',
    'terminal-notifier',
    'the_silver_searcher',
    'tmux',
    'tree',
    'ttyrec',

    // Install more recent versions of some OS X tools
    // better, more recent vim
    'vim --with-override-system-vi',
    'homebrew/dupes/nano',
    'homebrew/dupes/grep',
    'homebrew/dupes/openssh',
    'homebrew/dupes/screen',

    'wakatime-cli',
    'watch',
    // Install wget with IRI support
    'wget --with-iri',
    // z hopping around folders
    'z',
    'zopfli',
    'zsh'
  ],
  cask: [
    //'adium',
    'alfred',
    //'amazon-cloud-drive',
    //'atom',
    'audirvana-plus2',
    'bartender',
    'beyond-compare',
    // 'box-sync',
    'brave',
    'calibre',
    'cheatsheet',
    'chromium',
    'cinch',
    'cyberduck',
    'daisydisk',
    //'comicbooklover',
    'dash',
    //'diffmerge',
    'dropbox',
    'evernote',
    'firefoxdeveloperedition',
    'firefoxnightly',
    'fman',
    'franz',
    'gitter',
    'google-chrome',
    'google-chrome-canary',
    'google-cloud-sdk',
    'gpgtools',
    'gyazo',
    'hocus-focus',
    'imagealpha',
    'imageoptim',
    'ireadfast',
    'iterm2',
    'jetbrains-toolbox',
    'karabiner-elements',
    'keybase',
    'little-snitch',
    'lmsclients-squeezeplay',
    'logitech-media-server',
    'logitech-options',
    'logitech-unifying',
    'micro-snitch',
    'mountain-duck',
    'ngrok',
    'opera',
    'path-finder',
    'popchar',
    'postman',
    //'macvim',
    'sizeup',
    //'sketchup',
    'skype',
    'slack',
    'slate',
    'spectacle',
    'spotify',
    'squeezeplay',
    'sublime-text',
    'the-unarchiver',
    'torbrowser',
    //'transmission',
    'virtualbox',
    'visual-studio-code',
    'vivaldi',
    'vlc',
    'webkit-nightly',
    'xquartz'
  ],
  gem: [
    // 'git-up'
  ],
  npm: [
    'antic',
    'buzzphrase',
    // sexy git diffs
    'diff-so-fancy',
    'eslint',
    'instant-markdown-d',
    // 'generator-dockerize',
    // Type `git open` to open the GitHub page or website for a repository.
    'git-open'
    // fancy listing of recent branches
    'git-recent',
    'gulp',
    'npm-check',
    'prettyjson',
    'trash',
    // trash as the safe `rm` alternative
    'trash-cli',
    'vtop'
    // ,'yo'
  ]
};
