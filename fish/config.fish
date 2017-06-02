# function homestead
#   cd ~/Homestead ;and vagrant $argv
# end
#
# set -gx NVM_DIR (brew --prefix nvm)

set -gx GOPATH $HOME/golang
set -gx PATH $PATH $GOPATH
set -gx PATH $PATH ~/src/elm-format
# set -gx fish_user_paths "/usr/local/sbin" $fish_user_paths
fish_vi_key_bindings

