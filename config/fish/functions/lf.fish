function lf --wraps eza --description "lists only files (no directories)"
    eza -lafh $argv --color=always | grep -v /
end
