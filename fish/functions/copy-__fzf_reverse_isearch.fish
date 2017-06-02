function __fzf_reverse_isearch
  __fish_history | __fzfcmd +s --tiebreak=index --toggle-sort=ctrl-r -q (commandline) $FZF_DEFAULT_OPTS $FZF_REVERSE_ISEARCH_OPTS | read -l select
  if not test -z $select
    commandline -rb "$select"
    commandline -f repaint
  end
end
