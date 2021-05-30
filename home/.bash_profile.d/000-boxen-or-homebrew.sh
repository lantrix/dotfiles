if [[ -f /opt/boxen/env.sh  ]]; then
	source /opt/boxen/env.sh
fi

if [[ -n "$(which brew 2>/dev/null)" ]]; then
	export BREW_CELLAR=$(brew --cellar)
	export BREW_PREFIX=$(brew --prefix)
fi
