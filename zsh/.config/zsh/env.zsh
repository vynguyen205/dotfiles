#================================
# Environment Variables
# ================================

# fzf
export FZF_DEFAULT_OPTS="
--height 60%
--reverse
--border=rounded
--input-border=rounded
--color='border:#313244'
--padding=5%,5%,10%
--scroll-off=5
--scrollbar=''
--info='right'
--cycle
"
export FZF_CTRL_R_OPTS="
--tmux 50% 
--input-label='Command History'
--input-label-pos=top
"

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=100000
export SAVEHIST=100000


