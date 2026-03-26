# jrmsdev/dotfiles .bashrc

# shellcheck disable=SC1090
# shellcheck disable=SC1091

umask 0027

export LANG=en_US.UTF-8
export TERM=xterm-256color

# Brew
if test -d /opt/homebrew; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
  if test -s /opt/homebrew/etc/bash_completion; then
    source /opt/homebrew/etc/bash_completion
  fi
fi

# Utils
if test -s ~/Utils/.bashrc; then
    source ~/Utils/.bashrc
fi

# Golang
export GOPATH="${HOME}/Golang"
if test -d "${GOPATH}/bin"; then
    PATH="${GOPATH}/bin:${PATH}"
fi

# Workspace
PATH="${HOME}/Workspace/bin:${PATH}"
if test -s ~/Workspace/.bashrc; then
    source ~/Workspace/.bashrc
fi

# Interactive mode only
if test -z "$PS1"; then
   return
fi

# Make bash check its window size after a process completes
shopt -s checkwinsize

alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

if test -s ~/.bashrc.aliases; then
	source ~/.bashrc.aliases
fi

if test -s ~/.bashrc.local; then
	source ~/.bashrc.local
fi
