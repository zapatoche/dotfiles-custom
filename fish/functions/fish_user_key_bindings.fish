function fish_user_key_bindings
    ### pisces ###
    set -l _pisces_bind_mode default
    if [ "$fish_key_bindings" = 'fish_vi_key_bindings' ]
        set _pisces_bind_mode insert
    end
    set -q pisces_pairs
    or set -U pisces_pairs '(,)' '[,]' '{,}' '","' "','"
    for pair in $pisces_pairs
        _pisces_bind_pair $_pisces_bind_mode (string split -- ',' $pair)
    end
    bind -M $_pisces_bind_mode \b _pisces_backspace
    bind -M $_pisces_bind_mode \177 _pisces_backspace
    bind -M $_pisces_bind_mode \t _pisces_complete
    ### pisces ###
    ### fzf ###
    bind \ct '__fzf_ctrl_t'
    bind \cr '__fzf_ctrl_r'
    bind \cx '__fzf_ctrl_x'
    bind \ec '__fzf_alt_c'
    if bind -M insert >/dev/null ^/dev/null
        bind -M insert \ct '__fzf_ctrl_t'
        bind -M insert \cr '__fzf_ctrl_r'
        bind -M insert \cx '__fzf_ctrl_x'
        bind -M insert \ec '__fzf_alt_c'
    end
    ### fzf ###
end
