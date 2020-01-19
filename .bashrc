#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
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
eval "$(ssh-agent -s)"
eval "$(starship init bash)"
