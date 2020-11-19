function set_vars -d "set the configuration variables"

    #user default configuration folder
    set -g -x XDG_CONFIG_HOME "$HOME/.config"

    #user cache folder
    set -g -x XDG_CACHE_HOME "$HOME/.cache"

    #Where data files should be written
    set -g -x XDG_DATA_HOME "$HOME/.local/share"

    set -g -x -a PATH "$HOME/bin"
end
