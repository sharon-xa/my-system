function la --wraps eza --description "lists everything with directories first"
    eza -lah $argv --group-directories-first
end
