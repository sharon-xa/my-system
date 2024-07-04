function ls --wraps eza --description "lists files and directories (no hidden file or directories)"
   eza -lh $argv --color=always --sort=size | grep -v /
end
