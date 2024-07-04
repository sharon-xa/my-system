function lh --wraps eza --description "lists hidden files and directories"
   eza -dlh .* $argv --group-directories-first 
end
