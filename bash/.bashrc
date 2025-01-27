# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export HTTP_PROXY="http://192.168.202.206:44355"
export HTTPS_PROXY="http://192.168.202.206:44355"
export NO_PROXY="localhost,127.0.0.1,.example.com"

export GEMINI_API_KEY=

alias la='ls -a'
alias cisco="packettracer"
alias wine="flatpak run org.winehq.Wine"

# path
export PATH="$HOME/.flutter/flutter/bin:$PATH"
export PATH="/opt/pt:$PATH"
export PATH="/var/home/indra12/.local/Windsurf/bin:$PATH"

