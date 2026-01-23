if [[ -n "$(which watch 2>/dev/null)" ]]; then
	alias watch='watch -n 1 '
fi
if [[ -n "$(which kubectl 2>/dev/null)" ]]; then
	alias k='kubectl '
	complete -o default -F __start_kubectl k
	alias kns='kubectl ns '
	alias kctx='kubectl ctx '
fi
if [[ -n "$(which flux 2>/dev/null)" ]]; then
	. <(flux completion bash)
fi
if kubectl krew version >/dev/null 2>&1; then
	export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
	source ~/.kube/completion/kubectx.bash
	source ~/.kube/completion/kubens.bash
fi
