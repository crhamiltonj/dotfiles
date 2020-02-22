#
# ~/.bashrc
#

# Bash completion
[[ $PS1 && -f /usr/share/bash_completion  ]] && \
    . /usr/share/bash-completion/bash_completion

# Change default fzf search program 
#determines search program for fzf
if type ag &> /dev/null; then
        export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
#refer rg over ag
if type rg &> /dev/null; then
        export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Ensure agent is running
ssh-add -l &>/dev/null
if [ "$?" == 2  ]; then
  # Could not open a connection to your authentication agent.

  # Load stored agent connection info.
  test -r ~/.ssh-agent && \
    eval "$(<~/.ssh-agent)" >/dev/null

  ssh-add -l &>/dev/null
  if [ "$?" == 2  ]; then
    # Start agent and store agent connection info.
    (umask 066; ssh-agent > ~/.ssh-agent)
    eval "$(<~/.ssh-agent)" >/dev/null
  fi
fi

# Load identities
ssh-add -l &>/dev/null
if [ "$?" == 1  ]; then
      # The agent has no identities.
      # Time to add one.
      ssh-add ~/.ssh/id_rsa
      ssh-add ~/.ssh/bk-t560a-01
      ssh-add -t 4h
fi

alias ls='exa'
alias ll='exa -l'
alias la='exa -a'
alias lla='exa -la'

alias dfa='df -T -h'
alias dfs='df -T -x devtmpfs -x tmpfs -x squashfs -h'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export EDITOR=vim

# Call tmux for every interactive shell. Cause tmux is awesome.
if [[ -z "$TMUX"  ]]; then
  ID=$(/usr/bin/tmux ls | grep -vm1 attached | cut -d: -f1)
  if [[ -z "${ID}"  ]]; then
    /usr/bin/tmux new-session
  else
    /usr/bin/tmux attach-session -t "${ID}"
  fi
fi
function gi() { curl -sL https://www.gitignore.io/api/$@ ;}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# eval "$(starship init bash)"
