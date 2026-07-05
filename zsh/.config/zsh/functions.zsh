# Yazi config
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# ---------------------- Widget ---------------------------
# # fzf as completion picker
# # `$` :: dereference the value | EX: $HOME -> returns ~
# # 2>/dev/null :: "send error no where" ignore error
# function _test1() {
#   local file
#   file=$(find . -type f 2>/dev/null | fzf)
#
#   [[ -n $file ]] || return
#
#   LBUFFER+=" $file"
# }
#
# zle -N useless-widget _test1  # register this as a widget
# bindkey ^F useless-widget     # bind widget to a key to execute
