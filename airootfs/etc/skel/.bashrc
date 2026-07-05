export EDITOR=nvim
export TERMINAL=foot
export BROWSER=chromium

if [[ ":$PATH:" != *":$HOME/Scripts:"* ]]; then
    export PATH="$PATH:$HOME/Scripts"
fi

# Git branch in prompt
_git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
    echo " ($branch)"
}
export PS1='\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[33m\]$(_git_branch)\[\e[0m\]\$ '

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias pkg_size="expac -H M '%m\t%n' | sort -h"

# fzf
eval "$(fzf --bash)"
export FZF_DEFAULT_OPTS="--height 40% --reverse --border"
export FZF_CTRL_R_OPTS="--border"

fh() {
  local cmd
  cmd=$(history | awk '{$1=""; print substr($0,2)}' | tac | sort -u | fzf \
    --height 40% --reverse --border \
    --prompt="History > " \
    --preview 'echo {}' --preview-window=up:1:wrap)
  if [ -n "$cmd" ]; then
    echo -e "\n> $cmd"
    read -p "Run? [y/N/c(opy)] " ans
    if [[ "$ans" =~ ^[Yy]$ ]]; then
      history -s "$cmd"; eval "$cmd"
    elif [[ "$ans" =~ ^[Cc]$ ]]; then
      echo "$cmd" | wl-copy && echo "Copied."
    fi
  fi
}
bind -x '"\C-h": fh'
