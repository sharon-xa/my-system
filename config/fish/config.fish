if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
end

# >>> JVM installed by coursier >>>
set -gx JAVA_HOME "/home/sharon/.cache/coursier/arc/https/github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz/jdk8u292-b10"
set -gx PATH "$PATH:/home/sharon/.cache/coursier/arc/https/github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz/jdk8u292-b10/bin"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/sharon/.local/share/coursier/bin"
# <<< coursier install directory <<<

# Created by `pipx` on 2023-09-19 22:21:12
set PATH $PATH /home/sharon/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

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

