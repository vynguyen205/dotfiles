# ---------------------------
# Zsh completion system
# FYI: zsh-completions & zsh-autocomplete are not the same
# see zshcompsys or `ztyle -L` (current styles + values)
# ---------------------------

# enable builtin completion
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
autoload -Uz compinit                         # load only when i use it
zstyle ":completion:*" menu select            # when i tab, show menu instead of cycling
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"   # turn on completion


# wtf is zstyle? rules for completion
# syntax: `zstyle '<context>' <style> <value>`

# <context>: "where the rules applies"
# ':completion:*'              # apply to all types of completion
# ':completion:*:git:*'        # only git
# ':completion:*:cd:*'         # only cd command

# <style>: "what behavior"
# `menu`
# `list-colors`
# `format`

# <value>: "how it behaves"
# `yes`, `no`, `on`, `off, `select`, `noselect`
# a pattern: 'm:{a-z}={A-Za-z}' 'r:|=*'
# a list: `local-directories` `path-directories`
# a path: ~/.config/blah/blah
# a format: '%F{green}%d%f'

# Different <styles> expects diff type of <value>
# menu *expects keyword* select
# matcher-list *expects rules* 'm:{a-z}={A-Za-z}' 'r:|=*'
# use-cache *expects* on/off

# zsh-users/zsh-completions
# community collection of extra completion scripts

