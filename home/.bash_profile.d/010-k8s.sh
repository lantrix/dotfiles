export PATH="${PATH}:${HOME}/.krew/bin"
if [[ -n "$(which watch 2>/dev/null)" ]]; then
	alias watch='watch -n 1 '
fi
if [[ -n "$(which kubectl 2>/dev/null)" ]]; then
	alias k='kubectl '
	complete -F __start_kubectl k
	alias kns='kubectl ns '
	alias kctx='kubectl ctx '
fi
if [[ -n "$(which flux 2>/dev/null)" ]]; then
	. <(flux completion bash)
fi