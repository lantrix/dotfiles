export PATH="${PATH}:${HOME}/.krew/bin"
if [[ -n "$(which watch)" ]]; then
	alias watch='watch -n 1 '
fi
if [[ -n "$(which kubectl)" ]]; then
	alias k='kubectl '
	complete -F __start_kubectl k
	alias kns='kubectl ns '
	alias kctx='kubectl ctx '
fi
if [[ -n "$(which flux)" ]]; then
	. <(flux completion bash)
fi