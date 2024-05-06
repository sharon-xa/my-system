function la --wraps ls --description "List contents of directory, including hidden files in directory using long format"
    lsd -lAh $argv --group-directories-first
end
