function start_keychain 
    # start keychain
    if status --is-interactive
	    keychain --agents ssh --eval id_rsa --quiet | source
    end
end

