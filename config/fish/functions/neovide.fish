function neovide --wraps neovide
    nohup neovide $argv > /dev/null 2>&1 & disown
end
