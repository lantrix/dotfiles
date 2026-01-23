#Apple Silicon
[[ -d "/opt/homebrew" ]] && eval $(/opt/homebrew/bin/brew shellenv)
if [[ -n "$(which brew 2>/dev/null)" ]]; then
	export BREW_CELLAR=$(brew --cellar)
	export BREW_PREFIX=$(brew --prefix)
	brew_etc="$(brew --prefix)/etc"
	[[ -r "${brew_etc}/profile.d/bash_completion.sh" ]] && . "${brew_etc}/profile.d/bash_completion.sh"
fi
