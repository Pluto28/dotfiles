
# start ssh agent if it's not already running
function ssh_agent 
    # make sure just one ssh-agent runs at time
    if [ ! (pgrep -u "$USER" ssh-agent) ] > /dev/null
        ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
    end
    if [ ! "$SSH_AUTH_SOCK" ]
        source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
    end
end

