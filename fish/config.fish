function homestead
  cd ~/Homestead ;and vagrant $argv
end

set -gx NVM_DIR (brew --prefix nvm)
