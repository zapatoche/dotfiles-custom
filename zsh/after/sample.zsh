#
# Samples of what you can do in *.after.zsh files.
# You can create as many files as you like, or put everything in one.
#

# define your own aliases or override those provided by YADR.
alias ls='ls -lAhFG'
alias hosts='sudo vim /private/etc/hosts'

# set or override options. two of my favorite are below.



#Always pushd when changing directory
setopt auto_pushd

# Automatically cd to frequently used directories http://robots.thoughtbot.com/post/10849086566/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME $HOME/Desktop/bwin.party $HOME/github $HOME/Dropbox $HOME/Dropbox/projects $HOME/projects)

# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob

#haxe library
export HAXE_LIBRARY_PATH="$(brew --prefix)/share/haxe/std"


#tmuxinator path
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
