#
# These are very common and useful
#
function ll --wraps ls --description "List contents of directory using long format"
    lsd -lh $argv --group-directories-first
end
