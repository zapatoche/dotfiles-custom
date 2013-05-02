# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#Add path to our custom bins
PATH=$PATH:/usr/local/share/npm/bin
export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
export PATH=$PATH:$yadr/bin:$yadr/bin/yadr
# export PATH=$PATH:/Applications/MAMP/Library/bin
# export PATH=$PATH:/Applications/MAMP/bin
# export PATH=$PATH:/usr/local/Cellar/git

#Always pushd when changing directory
setopt auto_pushd

# setopt auto_cd
cdpath=($HOME  $HOME/Dropbox $HOME/Dropbox/projects $HOME/projects)

# Show completion on first TAB
setopt menucomplete
