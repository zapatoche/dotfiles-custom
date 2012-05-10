# Give me my bash style incremental search
bindkey '^R' history-incremental-search-backward

#Add path to our custom bins
export PATH=/Users/yannicks/.rvm/gems/ruby-1.9.3-p165/bin:/Users/yannicks/.rvm/gems/ruby-1.9.3-p165@global/bin:/Users/yannicks/.rvm/rubies/ruby-1.9.3-p165/bin:/Users/yannicks/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export PATH=$PATH:/Users/yannicks/bin
export PATH=$PATH:$yadr/bin:$yadr/bin/yadr

#Always pushd when changing directory
setopt auto_pushd

setopt auto_cd
cdpath=($HOME $HOME/Desktop/bwin.party $HOME/github $HOME/Dropbox $HOME/Dropbox/projects $HOME/projects)

# Show completion on first TAB
setopt menucomplete

# Fuzzy matching of completions for when you mistype them:
# zstyle ':completion:*' completer _complete _match _approximate
# zstyle ':completion:*:match:*' original only
# zstyle ':completion:*:approximate:*' max-errors 1 numeric'

