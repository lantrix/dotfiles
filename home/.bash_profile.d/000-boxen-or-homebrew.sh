if [[ -f /opt/boxen/env.sh  ]]; then
	source /opt/boxen/env.sh
fi

#Apple Silicon
[[ -d "/opt/homebrew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ -n "$(which brew 2>/dev/null)" ]]; then
	export BREW_CELLAR=$(brew --cellar)
	export BREW_PREFIX=$(brew --prefix)
fi
