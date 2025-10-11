umask 0027

if test -d /opt/homebrew; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

  if test -s /opt/homebrew/etc/bash_completion; then
    source /opt/homebrew/etc/bash_completion
  fi
fi

# Interactive mode only
if [[ $- == *i* ]]; then
   return
fi

# Make bash check its window size after a process completes
shopt -s checkwinsize

alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
