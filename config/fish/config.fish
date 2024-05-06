if status is-interactive
  fastfetch
end

set fish_greeting

# Go executables
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# Aliases
# ---------------------------------
alias coverage="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"
alias gitlog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gototesting="cd /run/media/sharon/SATA01/learning/programming/testing/introduction-to-testing-in-go/"

# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursors to an underscore
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore
# Set the external cursor to a line. The external cursor appears when a command is started.
# The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
set fish_cursor_external line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block
