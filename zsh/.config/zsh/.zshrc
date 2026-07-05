# correct order of loading
# 1. env
# 2. options (setopt, shell behavior)
# 3. completion
# 4. plugins (fzf, zoxide, etc)
# 5. Aliases
# 6. Keybinds
# 7. prompt

source "$ZDOTDIR/env.zsh"
source "$ZDOTDIR/options.zsh" 
source "$ZDOTDIR/completion.zsh" 

source "$ZDOTDIR/functions.zsh"   # plugins might use your functions, so before plugins is prefered
source "$ZDOTDIR/plugins.zsh" 

source "$ZDOTDIR/alias.zsh" 
source "$ZDOTDIR/keybinds.zsh" 
source "$ZDOTDIR/prompt.zsh" 


