if [[ `uname` -eq 'Darwin' ]]; then
	if [[ -n "$(which pyenv)" ]]; then
		eval "$(pyenv init -)"
		# eval "$(pyenv virtualenv-init -)"
		#pyenv compile needs zlib - zlib is keg-only
		export LDFLAGS="-L/usr/local/opt/zlib/lib"
		export CPPFLAGS="-I/usr/local/opt/zlib/include"
	fi
	if [[ -n "$(which pipenv)" ]]; then
		export PIPENV_PYTHON="$HOME/.pyenv/shims/python"
		export PIPENV_VENV_IN_PROJECT=1
		eval "$(pipenv --completion)"
	fi
fi
